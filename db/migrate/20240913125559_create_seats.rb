class CreateSeats < ActiveRecord::Migration[7.2]
  def change
    create_table :seats do |t|
      t.references :flight, null: false, foreign_key: true
      t.references :seat_type, null: false, foreign_key: true
      t.decimal :price
      t.integer :status

      t.timestamps
    end
  end
end
