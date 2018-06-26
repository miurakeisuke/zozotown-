class ContactsController < ApplicationController

  def create
    @contacts = Product.find(1).contacts
    Contact.create(content: contact_params[:content], product_id: contact_params[:product_id])
    redirect_to '/products/1'
  end


private

  def contact_params
    params.require(:contact).permit(:content).merge(product_id: 1)
  end

end
