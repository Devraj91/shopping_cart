class AdminController < ApplicationController
  before_filter :authorized?

  private
  def authorized?
    unless current_user.is_admin?
      flash[:error] = "You are not authorized to view that page."
      redirect_to root_path
    end
  end
end
