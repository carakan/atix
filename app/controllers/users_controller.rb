class UsersController < ApplicationController

  # render new.rhtml
  def new
    @user = User.new
  end
 
  def create
    @user = User.new(params[:user])
    @user.admin = params[:user][:admin]
    success = @user && @user.save
    if success && @user.errors.empty?
      redirect_to users_path
      flash[:notice] = "Usuario registrado"
    else
      flash[:error]  = "We couldn't set up that account, sorry.  Please try again."
      render :action => 'new'
    end
  end

  def index
    @users = User.paginate(:per_page => 10, :page => params[:page])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
end
