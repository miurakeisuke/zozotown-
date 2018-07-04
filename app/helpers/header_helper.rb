module HeaderHelper
  def header_links_partial_path
    if user_signed_in?
      'layouts/header/header_link/header_elements_sign_in'
    else
      'layouts/header/header_link/header_elements_non_sign_in'
    end
  end
end
