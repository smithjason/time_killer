class CreateVotes < ActiveRecord::Migration
  def change
   create_table :votes do |t|
     t.belongs_to :user
     t.integer :up_vote
     t.integer :down_vote
     t.references :votable, polymorphic: true
   end
    add_index :votes, [:votable_id, :votable_type]
  end
end
