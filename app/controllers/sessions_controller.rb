class SessionsController < ApplicationController
  layout "authenticate"
  
  def login
   
  end
  
  def authenticate
      user_info = User.authenticate(params[:username], params[:password])
      if user_info.present?
        session[:id] = user_info.id 
        session[:role] = user_info.role
        
        if session[:role] == User::ADMIN
          redirect_to dashboard_path
        else
          #TODO  
        end
        
      else
        flash['error'] = 'Incorrect Username or Password!'
        redirect_to root_url
      end   
  end
  
  def retry_password
     user_info = User.find_by_email(params[:email])
     bool =  user_info.present? ? true : false
     respond_to do |format|
       format.js { render :text => bool }
     end
  end
  
  def logout
      reset_session
      redirect_to root_url
  end

end
