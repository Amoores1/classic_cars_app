class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :manufacturer
      t.integer :year
      t.string :model
      t.string :category
      t.integer :day_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
