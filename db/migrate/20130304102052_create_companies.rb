class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :id
      t.string :name
      t.string :add

      t.timestamps
    end
  end
end
