class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(params[:category])
    if @category.save
      redirect_to categories_path, :notice => "New category saved"
    else
      render 'new'
    end
  end
  def index
    @categories = Category.all
  end
end
