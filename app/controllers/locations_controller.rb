class LocationsController < ApplicationController

	before_filter :controle_extra
 
  def index
    @locations = Location.all  
    respond_with @locations
    end


    def controle_extra
    @categories = Category.all
    @galleries = Gallery.all
    @postssite = Post.find(:all, :limit => 1, :order=> 'created_at desc')
 @posts = Post.paginate page: params[:page], :per_page => 3
  end
  

end
