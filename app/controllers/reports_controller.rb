class ReportsController < ApplicationController
  def index
    
  end
  
  def show
    @expenses = Expense.where("spent_on >= ? and spent_on <= ?", Date.parse(params[:spent_on_from_date]), Date.parse(params[:spent_on_to_date]))
  end
  
 
end
