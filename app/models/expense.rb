class Expense < ActiveRecord::Base
  belongs_to :categories
  attr_accessible :category_id, :comments, :cost, :item_name, :spent_on, :user_id


  
  def validate_spent_on 
    
  end
  def convert_date
    spent_on = Date.parse(spent_on)
  end
end