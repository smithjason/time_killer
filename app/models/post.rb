class Post < ActiveRecord::Base
  has_many :answers, class_name: "Post",
          foreign_key: "parent_id"

  belongs_to :parent, class_name: "Post"
end