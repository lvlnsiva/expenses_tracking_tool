require 'spec_helper'
 
describe ExpensesController do

  before(:each) do
    @current_user = FactoryGirl.create(:user)
    controller.stub(:current_user).and_return(@current_user)
    controller.stub(:authenticate_user!).and_return(true)
    @expense = FactoryGirl.create(:expense, :user => @current_user)
  end
  
  describe "GET #index" do
    it "populates an array of expenses" do
      get :index
      assigns(:expenses).should eq([@expense])
    end
    
    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end
  
  describe "GET #show" do
    it "assigns the requested expense to @expense" do
      get :show, id: @expense.id
      assigns(:expense).should eq(@expense)
    end
    
    it "renders the #show view" do
      get :show, id: @expense.id
      response.should render_template :show
    end
  end
end