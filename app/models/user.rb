class User < ActiveRecord::Base
  attr_accessor :password

  validates_presence_of   :password, :on => :create
  validates_presence_of   :email
  validates_uniqueness_of :email

  def self.authenticate email, password
    user = find_by_email email
    if user.password == password
      user
    else
      nil
    end
  end
end
