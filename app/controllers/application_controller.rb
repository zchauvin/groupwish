class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  protected

  def authenticate_admin!
    unless (user_signed_in? && current_user.role == "admin")
      flash[:alert] = "You are not allowed to do that."

      redirect_to :back
    end
  end
  
end
