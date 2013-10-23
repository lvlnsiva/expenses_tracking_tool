class ReportsController < ApplicationController
before_filter :authenticate_user!
  def index
    
  end
  
  def result
    @expenses = Expense.where("spent_on >= ? and spent_on <= ? and user_id = ?", Date.parse(params[:spent_on_from_date]), Date.parse(params[:spent_on_to_date]), current_user.id)
    @expenses = @expenses.where("category_id = ?", params[:category_id]) if params[:category_id].present?
    @expenses = @expenses.paginate(:page => params[:page])
    render :action => :index
  end
  
 
end
