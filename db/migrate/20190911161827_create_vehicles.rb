class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :make
      t.string :cartype
      t.integer :year
      t.integer :price

      t.timestamps
    end
  end
end
