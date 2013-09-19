class Expense < ActiveRecord::Base
  belongs_to :categories
  attr_accessible :category_id, :comments, :cost, :item_name, :spent_on, :user_id
end
