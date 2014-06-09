class Comment < ActiveRecord::Base
  belongs_to :post
  has_many :votes, as: :votable
  belongs_to :user
end