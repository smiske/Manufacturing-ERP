class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_number
      t.string :product_code
      t.string :product_name
      t.string :product_type
      t.float :tax
      t.float :rate

      t.timestamps
    end
  end
end
