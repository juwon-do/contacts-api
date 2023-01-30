class ContactsController < ApplicationController
  def index
    contacts = Contact.all
    render json: contacts.as_json
  end
  def create
    results = Geocoder.search(params[:address])
    contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      address: params[:address],
      latitude: results.first.coordinates[0],
      longitude: results.first.coordinates[1]
    )
    contact.save
    render json: contact.as_json
    if 
    else
    end
  end
  def show
    contact = Contact.find_by(id: params[:id])
    render json: contact.as_json
  end
  def update
    contact = Contact.find_by(id: params[:id])
    contact.first_name = params[:first_name]
    contact.last_name = params[:last_name]
    contact.email = params[:email]
    contact.phone_number = params[:phone_number]
    contact.save
    render json: contact.as_json
  end
  def destroy
    contact = Contact.find_by(id: params[:id])
    contact.destroy
    render json: contact.as_json
  end
end
