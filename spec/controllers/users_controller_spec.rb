require 'spec_helper'

describe UsersController do
	describe "Users #new" do
		it 'renders the #new template' do 
			get :new
			response.should render_template (:new)
		end
	end

	describe "Users create" do 
		# it "creates a new contact" do 
		# 	new_user = User.create(name: "tommy", email: "t@t.com", password: "t")
		# 	expect{
		# 		post :create
		# 	}.to change(User.count).by(1)
		# end



		# it "redirects to signup path on success" do
		# 	@user= User.create(name: "tommy", email: "t@t.com", password: "t")
		# 	post :create, user: @user
		# 	response.should redirect_to(root_url)
		# end
	it "redirects to root url on uncucess" do
	end
	end
end

