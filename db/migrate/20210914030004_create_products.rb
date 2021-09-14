class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :stock, default: 1
      t.float :price, default: 0.0
      t.string :code
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
