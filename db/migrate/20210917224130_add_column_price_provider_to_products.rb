class AddColumnPriceProviderToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :price_provider, :float, default: 0.0
  end
end
