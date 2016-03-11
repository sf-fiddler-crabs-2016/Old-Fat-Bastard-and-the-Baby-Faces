class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :postable_id
      t.string :postable_type
      t.integer :poster_id

      t.timestamps null: false
    end
  end
end
