class Expense < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  attr_accessible :category_id, :comments, :cost, :item_name, :spent_on, :user_id
  self.per_page = 5

  
  def validate_spent_on 
    
  end
  def convert_date
    spent_on = Date.parse(spent_on)
  end
end