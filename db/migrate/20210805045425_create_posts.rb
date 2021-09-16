class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      has_many: sub_posts, 
      t.timestamps
    end
  end
end
