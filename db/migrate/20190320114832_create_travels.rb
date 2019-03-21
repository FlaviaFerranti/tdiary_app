class CreateTravels < ActiveRecord::Migration[5.2]
  def change
    create_table :travels do |t|
      t.string :title
      t.string :images
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :travels, [:user_id, :created_at]
  end
end
