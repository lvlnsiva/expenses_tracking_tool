class ExpensesController < ApplicationController
  def new
    @expense = Expense.new
    @expense.category_id = params[:category_id] if params[:category_id]
    puts "params >>>>>>>>>>> #{params.inspect}"
  end
  
  def create 
      @expense = Expense.new params[:expense]
      @expense.user = current_user
      respond_to do |format|
        if @expense.save
          format.html { redirect_to(@expense, :notice => 'expense was successfully created.') }
          format.json { render json: @expense, status: :created, location: @expense}
        else
          format.html { render action: "new"}
          format.json { render json: @expense.errors, status: :unprocessable_entity, :notice => 'error occured' }
       end
      end
  end
  
  def show
    @expense = Expense.find(params[:id])
  end
  def index
    @expenses = current_user ? current_user.expenses : Expense.all
  end
end
