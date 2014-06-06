require 'spec_helper'

describe User do
  it "is valid with a name, email, and password" do
    user=User.new(name: "Tommy", email: "Kitten@kitten.com", password: "ilovecats")
    expect(user).to be_valid
  end
  it "is invalid with no information" do
    expect(User.create(name: nil, email: nil, password: nil)).to have(1).errors_on(:email)
  end

  it "is invalid when supplying a non-unique email" do
  end
end
