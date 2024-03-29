require 'spec_helper'

describe SessionsController do

  describe "#new" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
   end

   describe "#create " do
    let (:user) {create :user}
    it "redirects to the user path on success" do
      	post :create, {email: user.email, password: user.password}
      response.should redirect_to(user_path(user.id))
    end

    it "redirects to log_in path on faulty log in" do
      post :create
      response.should redirect_to(log_in_path)
    end
  end
end
