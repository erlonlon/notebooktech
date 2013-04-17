class Admin::PostsController < Admin::BaseController

 before_filter :controle_extra
 
  def index
    @posts = Post.paginate page: params[:page], :per_page => 6
    respond_with @post
  end

 
  def show
    @post = Post.find(params[:id])
    respond_with @post
  end

  def new
    @post = Post.new
    respond_with @post
  end

  
  def edit
    @post = Post.find(params[:id])
  end

  
  def create
    @post = Post.new(params[:post])
    flash[:notice] = "Registro salvo com sucesso " if @post.save 
    respond_with @post , :location => admin_posts_path
     
   
  end

  
  def update
    @post = Post.find(params[:id])
    flash[:notice] = "Registro atualizado com sucesso !" if @post.update_attributes(params[:post])
    respond_with @post ,:location  => admin_posts_path
   
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    respond_with @post, :location => admin_posts_path

   
  end

  def controle_extra

  @categories = Category.all
  @galleries = Gallery.paginate page: params[:page], :per_page => 10
  end
end
