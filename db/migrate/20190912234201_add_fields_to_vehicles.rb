class AddFieldsToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :description, :text
  end
end
