class Expense < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  attr_accessible :category_id, :comments, :cost, :item_name, :spent_on, :user_id
  self.per_page = 5
  validate :validate_spent_on
  
  def validate_spent_on 
    puts spent_on.inspect
    errors.add(:base, "date should not be greater than current date") if spent_on.to_date > Date.today
  end
  def convert_date
    spent_on = Date.parse(spent_on)
  end
end