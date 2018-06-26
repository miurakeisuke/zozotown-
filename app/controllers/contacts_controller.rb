class ContactsController < ApplicationController

  def create
    # binding.pry
    @new_contact = Contact.create(content: contact_params[:content], product_id: contact_params[:product_id])

    if @new_contact.save
      respond_to do |format|
        format.html { redirect_to "/products/1" }
        format.json
      end
    end
  end


private

  def contact_params
    params.require(:contact).permit(:content).merge(product_id: params[:product_id])
  end

end
