class UsersController < ApplicationController
  def index
      @users ||= User.all
  end

  def new
  end

  def orders
    #code
  end


  def create
    user  = User.new(user_params)

    if user.save    
      session[:user_id] = user.id
      flash[:notice] = "User successfully created"
      redirect_to '/products'
    else
      redirect_to '/signup'
    end
  end

  # def destroy
  #   @users.destroy
  #   respond_to do |format|
  #     format.html { redirect_to user_path, notice: 'User was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
