class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to  :user
      t.string      :title
      t.text        :content
      t.integer     :vote, default: 0
      t.integer     :parent_id
      t.boolean     :accepted, default: false
    end
  end

##We can make a method that puts a value for vote.
end
