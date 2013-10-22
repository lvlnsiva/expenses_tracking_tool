class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  #attr_accessible :email, :password, :password_confirmation
  has_many :expenses
  has_many :categories
  
  #attr_accessor :password
  
  #validates_confirmation_of :password
  #validates_presence_of :password, :on => :create
  #validates_presence_of :email
  
 
  #def self.authenticate(email, password) 
    #user = find_by_email(email) 

    #puts user  #this returns nil so my class is never able to authenticate the user

   #return nil if user.nil? 
    #return user if user.password?(password)
  #end
end
