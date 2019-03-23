class AddLocationToTravels < ActiveRecord::Migration[5.2]
  def change
    add_column :travels, :location, :string
  end
end
