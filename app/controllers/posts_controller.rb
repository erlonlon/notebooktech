class PostsController < ApplicationController
	before_filter :controle_extra
  
  def index
    @posts = Post.paginate page: params[:page], :per_page => 10
    respond_with @posts

   
  end

 
  def show
    @post = Post.find(params[:id])
    respond_with @post
  end



  def controle_extra
    @categories = Category.all
  end


end
