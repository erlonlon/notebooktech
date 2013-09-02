class Admin::ContactsController < Admin::BaseController
 
  def index
    @contacts = Contact.paginate page:params[:page], :per_page => 6
    respond_with @contacts
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    @contact = Contact.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contact }
    end
  end


 
end
