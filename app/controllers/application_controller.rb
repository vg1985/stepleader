class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_session, :except => [:login,:logout,:authenticate, :retry_password]
  
  def check_session
    redirect_to root_url unless session[:id].present?
  end

end
