class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products, :id => false do |t|
      t.integer :id
      t.string :image
      t.string :title
      t.string :description
      t.integer :amount
      t.float :price

      t.timestamps
    end
  end
end
