class AddProductIdToManufacturers < ActiveRecord::Migration
  def change
    add_column :manufacturers, :product_id, :integer
  end
end
