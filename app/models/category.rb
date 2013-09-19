class Category < ActiveRecord::Base
  has_many :expenses
  attr_accessible :description, :name
end
