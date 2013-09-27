class ReportsController < ApplicationController
  def index
    
  end
  
  def show
    @expense = Expense.where("spent_on_from_date > ? and spent_on_to_date < ?", params[:spent_on_from_date],params[:spent_on_to_date])
  end
end
