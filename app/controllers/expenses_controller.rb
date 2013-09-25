class ExpensesController < ApplicationController
  def new
    @expense = Expense.new
  end
  def create 
      @expense=Expense.new params[:expense]
      respond_to do |format|
        if @expense.save
          format.html { redirect_to(@expense, :notice => 'todo was successfully created.') }
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
end
