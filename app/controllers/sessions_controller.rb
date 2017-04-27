class SessionsController < ApplicationController
  def new

  end

  def create
      user = User.find_by_email(params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            flash[:notice] = "Login successfully, #{user.name}"
            redirect_to '/products'
          else
            flash[:notice] = "User not found"
            redirect_to '/login'
          end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged Out successfully"
    redirect_to '/login'
  end
end
