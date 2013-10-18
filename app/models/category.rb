class Category < ActiveRecord::Base
  has_many :expenses
  belongs_to :user
  attr_accessible :description, :name
end
