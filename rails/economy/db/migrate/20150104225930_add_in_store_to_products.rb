class AddInStoreToProducts < ActiveRecord::Migration
  def change
    add_column :products, :in_store, :boolean, default: true 
  end
end
