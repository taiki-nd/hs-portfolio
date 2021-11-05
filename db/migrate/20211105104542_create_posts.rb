class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :category
      t.string :model_name
      t.string :model_url
      t.text :text
      t.timestamps
    end
  end
end
