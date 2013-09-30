class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  
  attr_accessor :password
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email

  
 
end
