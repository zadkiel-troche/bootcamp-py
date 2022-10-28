class CreateNavbars < ActiveRecord::Migration[7.0]
  def change
    create_table :navbars, :id => false do |t|
      t.integer :id
      t.string :label
      t.string :url

      t.timestamps
    end
  end
end
