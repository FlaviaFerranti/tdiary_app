class AddLatLonToTravels < ActiveRecord::Migration[5.2]
  def change
    add_column :travels, :latitude, :float
    add_column :travels, :longitude, :float
  end
end
