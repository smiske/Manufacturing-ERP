class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :product_number
      t.integer :product_code
      t.string :product_name
      t.boolean :product_type
      t.floate :tax
      t.floate :rate

      t.timestamps
    end
  end
end
