class ContactsController < ApplicationController

  def create
    @new_contact = Contact.create(contact_params)

    if @new_contact.save
      respond_to do |format|
        format.html { redirect_to "product_path" }
        format.json
      end
    end
  end


private

  def contact_params
    params.require(:contact).permit(:content).merge(product_id: params[:product_id])
  end

end
