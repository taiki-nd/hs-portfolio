class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :category_id
      t.string :name
      t.string :url
      t.text :text
      t.timestamps
    end
  end
end
