class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new contact_params
    if @contact.valid?
        MessageMailer.contact(@contact).deliver_now
        redirect_to new_contact_url
        flash[:notice] = "We have received your contact and will be in touch soon!"
    else
        flash[:notice] = "There was an error sending your contact. Please try again."
        render :new
    end
  end

  private

  def contact_params
      params.require(:contact).permit(:name, :email, :phone_number, :body)
  end
end
