class AddDescriptionToGuitars < ActiveRecord::Migration[5.2]
  def change
    add_column :guitars, :description, :string
    add_column :guitars, :photo, :string
  end
end
