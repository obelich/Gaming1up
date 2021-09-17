class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.integer :type
      t.string :street_line1
      t.string :colony
      t.string :city
      t.string :state
      t.references :addressable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
