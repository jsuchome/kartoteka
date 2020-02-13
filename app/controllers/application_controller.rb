class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  private

  def authorize
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end

  def authorize_admin
    if current_user.nil? || !current_user.admin?
      redirect_to login_url, alert: "Only admin can add new users"
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
