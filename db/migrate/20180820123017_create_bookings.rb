class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :moment, foreign_key: true
      t.references :user, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
