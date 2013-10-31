 require 'spec_helper'

 describe Expense do
    it "has a valid factory" do
      FactoryGirl.create(:expense).should be_valid
    end
    it "should validate cost" do
      FactoryGirl.build(:expense, cost: "text").should_not be_valid
    end
    it "should validate spenton" do
      expense = FactoryGirl.build(:expense, spent_on: Date.today+10)
      expense.save.should be_false
      expense.errors.full_messages.should include("Spent on date should not be greater than current date")
    end
 end