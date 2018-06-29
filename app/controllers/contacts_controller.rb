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

  def destroy
    solved_contents.destroy_all
    redirect_to :root
  end

private

  def contact_params
    params.require(:contact).permit(:content).merge(product_id: params[:product_id], user_id: current_user.id)
  end

  def solved_contents
    current_user.contacts
  end

end
