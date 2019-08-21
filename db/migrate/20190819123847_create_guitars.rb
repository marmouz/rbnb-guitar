class CreateGuitars < ActiveRecord::Migration[5.2]
  def change
    create_table :guitars do |t|
      t.references :user, foreign_key: true
      t.string :model
      t.string :level
      t.string :brand
      t.string :genre
      t.integer :price_per_day

      t.timestamps
    end
  end
end
