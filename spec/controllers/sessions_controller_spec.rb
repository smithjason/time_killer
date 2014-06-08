require 'spec_helper'

describe SessionsController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end    	
   end

   describe "post create " do 
    it "redirects to the log in path after faulty sign in" do
    	post :create
    	response.should redirect_to log_in_path
    end

    it "redirects to user sign in on successful sign in" do
    	pending
    	# this needs a double or stub?
    	# user=User.create(name: "Tommy" , email: "Tommy@t.com", password: "t")
    	# user=double()
    	# post :create
    	# response.should redirect_to user_path(user)
    end
  end
end
