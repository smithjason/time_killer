require 'spec_helper'

describe UsersController do

	describe "#new" do
		it 'renders the #new template' do
			get :new
			response.should render_template (:new)
		end
	end

	describe "#create" do

		it "saves a user upon successful attributes" do
			expect {
				post :create, :user => FactoryGirl.attributes_for(:user)}.to change{User.count}.by(1)
		end

		it "does not save an invalid user" do
			expect {
				post :create, :user => {password: "t"}}.to change{User.count}.by(0)
		end

		it "redirects user to root_url on success" do
			post :create, :user => FactoryGirl.attributes_for(:user)
			response.should redirect_to(root_url)
		end

		it "redirects user to sign_up_path on failure" do
			post :create, :user => {password: "t"}
			response.should redirect_to(sign_up_path)
		end

	end

	describe "#show" do
		let (:user) {create :user}
		let (:post) {create :post}

		it "is successful" do
			get :show, {id: user.id, user_id: post.user_id}
			expect(assigns(:user)).to eq(user)
		end

		it "assigns @user to a user it finds in the database" do
			get :show, :id => user.id
			expect(assigns(:user)).to eq(user)
		end

	end

end

