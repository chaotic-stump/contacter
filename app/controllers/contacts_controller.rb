class ContactsController < ApplicationController
  # GET /contacts
  def index
    @contact = Contact.all
    json_response(@contacts)
  end

  # POST /contacts
  def create
    @contact = Contact.create!(contact_params)
    json_response(@contact, :created)
  end

  # GET /contacts/:id
  def show
    json_response(@contact)
  end

  # PUT /contacts/:id
  def update
    @contact.update(contact_params)
    head :no_content
  end

  # DELETE /contacts/:id
  def destroy
    @contacts.destroy
    head :no_content
  end

  private

  def contact_params
    # whitelist params
    params.permit(:first_name, :last_name, :phone, :email)
  end
end
