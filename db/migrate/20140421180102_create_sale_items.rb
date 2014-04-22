class CreateSaleItems < ActiveRecord::Migration
  def change
    create_table :sale_items do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.integer :cool_factor
      t.date :year_made
    end
  end
end
