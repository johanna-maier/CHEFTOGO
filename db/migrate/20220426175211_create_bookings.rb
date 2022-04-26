class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.text :comment
      t.references :user, null: false, foreign_key: true
      t.references :offer, null: false, foreign_key: true
      t.string :address
      t.string :status
      t.date :booking_date
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
