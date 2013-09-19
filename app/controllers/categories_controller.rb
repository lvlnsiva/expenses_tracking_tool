class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(params[:category])
    if @category.save
      redirect_to root_url, :notice => "New category saved"
    else
      render 'new'
    end
  end
end
