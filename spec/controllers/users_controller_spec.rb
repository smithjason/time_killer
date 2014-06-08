require 'spec_helper'

describe UsersController do

	describe "#new" do
		it 'renders the #new template' do 
			get :new
			response.should render_template (:new)
		end
	end

	describe "#create" do 

		it "saves a user upon succesfull attributes" do 
			expect {
				post :create, :user => FactoryGirl.attributes_for(:user)}.to change{User.count}.by(1)
				expect(response).to redirect_to(root_url)
		end

		it "does not save an invalid user" do
			expect {
				post :create, :user => {password: "t"}}.to change{User.count}.by(0)
				response.should redirect_to(sign_up_path)
		end

	end

	describe "#show" do 
		let (:user) {FactoryGirl.create :user}
		it "is successful" do 
			get :show, :id => user.id
			expect(response).to be_success
		end

		it "assigns @user to a user it finds in the databse" do 
			get :show, :id => user.id
			expect(assigns(:user)).to eq(user)
		end
		
	end

end

