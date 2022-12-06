class ContactsController < ApplicationController
  def action
    contact1 = Contact.first
    render json: contact1.as_json
  end
  def all_contacts
    contact = Contact.all
    render json: contact.as_json
  end  

end
