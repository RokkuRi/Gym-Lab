class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :year_founded
      t.string :owner
      t.integer :employee_count
      t.string :country

      t.timestamps
    end
  end
end
