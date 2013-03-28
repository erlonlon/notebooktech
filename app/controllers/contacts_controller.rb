class ContactsController < ApplicationController
  
  def index
    
     @contact = Contact.new
     respond_with @contact    
  end
 
   
  def new
    @contact = Contact.new
   respond_with @contact
  end

 

  def create
    @contact = Contact.new(params[:contact])
    flash[:notice] = "Obrigado pelo contato, logo daremos retorno !" if @contact.save
    respond_with @contact, :location => contacts_path
   
  end

  
end
