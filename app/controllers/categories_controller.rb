class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(params[:category])
    @category.user = current_user
    if @category.save
      redirect_to categories_path, :notice => "New category saved"
    else
      render 'new'
    end
  end
  def index
    @categories = current_user ? current_user.categories : Category.all
  end
end
