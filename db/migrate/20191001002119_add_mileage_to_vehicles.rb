class AddMileageToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :mileage, :integer
  end
end
