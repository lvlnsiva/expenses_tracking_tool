class ReportsController < ApplicationController
  def index
    
  end
  
  def result
    @expenses = Expense.where("spent_on >= ? and spent_on <= ?", Date.parse(params[:spent_on_from_date]), Date.parse(params[:spent_on_to_date]))
    @expenses = @expenses.where("category_id = ?", params[:category_id]) if params[:category_id].present?
    @expenses = @expenses.paginate(:page => params[:page])
    render :action => :index
  end
  
 
end
