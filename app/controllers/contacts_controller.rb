class ContactsController < ApplicationController
  before_filter :controle_extra
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

  def controle_extra
    @categories = Category.all
    @galleries = Gallery.all
    @postssite = Post.find(:all, :limit => 1, :order=> 'created_at desc')
 @posts = Post.paginate page: params[:page], :per_page => 4
  end
 

  
end
