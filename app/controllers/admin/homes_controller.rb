class Admin::HomesController < Admin::BaseController

	def index
   @contacts = Contact.paginate page:params[:page], :per_page => 6
	end



end
