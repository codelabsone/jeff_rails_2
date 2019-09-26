class CreateFiltrations < ActiveRecord::Migration[5.1]
  def change
    create_table :filtrations do |t|
      t.string :name
      t.text :descritpion

      t.timestamps
    end
  end
end
