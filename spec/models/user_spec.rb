 require 'spec_helper'
 
  describe User do
    it "has a valid factory" do
      FactoryGirl.create(:user).should be_valid
    end
    context "when user has firstname" do
        it "should return firstname" do
          FactoryGirl.build(:user, first_name: "John", last_name:nil).name.should == "John"
        end
    end
    
    context "when user has lastname" do
        it "should returns lastname" do
          FactoryGirl.build(:user, first_name: nil, last_name: "Doe").name.should == "Doe"
        end
    end
    
    context "when user's firstname and lastname present" do
      it "returns a user's full name as a string" do
        FactoryGirl.build(:user, first_name: "John", last_name: "Doe").name.should == "John Doe"
      end
    end
    
    context "when user's firstname and lastname not present" do
        it "should return user's email" do
          FactoryGirl.build(:user, first_name:nil, last_name:nil, email: "g@g.com").name.should == "g@g.com"
        end
    end
    
  end