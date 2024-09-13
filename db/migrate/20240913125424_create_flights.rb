class CreateFlights < ActiveRecord::Migration[7.2]
  def change
    create_table :flights do |t|
      t.string :number
      t.datetime :departure
      t.datetime :arrival
      t.string :origin
      t.string :destination
      t.references :airline, null: false, foreign_key: true

      t.timestamps
    end
  end
end
