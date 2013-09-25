class Expense < ActiveRecord::Base
  belongs_to :categories
  attr_accessible :category_id, :comments, :cost, :item_name, :spent_on, :user_id


  validate :validate_target_date
 # before_validation :convert_date
  def validate_target_date 
    errors.add(:base, "date should not be lessthan current date") if spent_on < Date.today.to_time
  end
  def convert_date
    spent_on = Date.parse(spent_on)
  end
end