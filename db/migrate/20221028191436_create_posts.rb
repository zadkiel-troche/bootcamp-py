class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts, :id => false do |t|
      t.integer :id
      t.string :imagen
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
