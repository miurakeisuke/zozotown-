class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  POSTAGE = 200

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender, :birth_year, :birth_month, :birth_day, :postal_code, :address, :tel_number])
    end
end
