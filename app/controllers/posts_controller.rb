class PostsController < ApplicationController
	before_filter :controle_extra
  
  def index
   @posts = Post.paginate page: params[:page], :per_page => 4
    respond_with @post
   
  end

 
  def show
    @post = Post.find(params[:id])
    respond_with @post
  end



  def controle_extra
    @categories = Category.all
    @galleries = Gallery.all
    @postssite = Post.find(:all, :limit => 1, :order=> 'created_at desc')
    @posts = Post.paginate page: params[:page], :per_page => 4
  end


end
