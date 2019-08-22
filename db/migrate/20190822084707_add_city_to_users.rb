class AddCityToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :city, :string
    add_column :users, :description, :string
    add_column :users, :photo, :string
  end
end
