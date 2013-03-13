class CreateEmploys < ActiveRecord::Migration
  def change
    create_table :employs do |t|
      t.string :name
      t.string :add
      t.integer :mobile_no

      t.timestamps
    end
  end
end
