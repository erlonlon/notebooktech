class ImagesController < ApplicationController

before_filter :controle_extra


  def index
  	 @galleries = Gallery.paginate page: params[:page], :per_page =>5
     respond_with @gallery
  end

    def controle_extra
    @categories = Category.all
    @galleries = Gallery.all
    @postssite = Post.find(:all, :limit => 1, :order=> 'created_at desc')
    @posts = Post.paginate page: params[:page], :per_page => 3
    @imagens_erlon = Type.find(3)
   
  end
end
