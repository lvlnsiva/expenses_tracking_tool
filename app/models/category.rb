class Category < ActiveRecord::Base
  has_many :expenses
  belongs_to :user
  attr_accessible :description, :name, :user_id
  validates :name,  :presence => true
  validates :description, :presence => true
end
