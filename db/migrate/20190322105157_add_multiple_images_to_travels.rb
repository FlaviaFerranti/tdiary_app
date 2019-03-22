class AddMultipleImagesToTravels < ActiveRecord::Migration[5.2]
  def change
    add_column :travels, :multiples, :string
  end
end
