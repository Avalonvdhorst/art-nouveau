class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :art, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :start_hour
      t.integer :end_hour
      t.string :status
      t.integer :total_price

      t.timestamps
    end
  end
end
