class CreateSeatTypes < ActiveRecord::Migration[7.2]
  def change
    create_table :seat_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
