class Admin::UsersController < Admin::BaseController
 
 before_filter :controle_extra
  def index
    @users = User.paginate page: params[:page], :per_page => 10
    respond_with @users
  end

  def new
    @user = User.new
    respond_with @user
  end
  
  def edit
    @user = User.find(params[:id])
  end
 
  def create
    @user = User.new(params[:user])
    flash[:notice] = "Registro salvo com sucesso !" if @user.save
    respond_with @user, :location => admin_users_path    
    
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])
    flash[:notice] = "Registro salvo com sucesso !" if @user.update_attributes(prams[:user])
    respond_with @user, :location => admin_users_path   
  end

 
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_with @user, :location => admin_users_path    

  
  end


  def controle_extra

  @categories = Category.all
  @galleries = Gallery.paginate page: params[:page], :per_page => 10
  end
end
