class User < ActiveRecord::Base
  # attr_accessible :title, :body
  ADMIN = 'admin'
  CUTSTOMER = 'customer'
  
  def self.authenticate username, password
     username.present? && password.present? ? self.find_by_email_and_password(username, password) : nil
  end
end
