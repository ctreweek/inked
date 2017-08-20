class AddReferenceToBooking < ActiveRecord::Migration[5.0]
  def change
    add_reference :bookings, :artist, foreign_key: true
    add_reference :bookings, :user, foreign_key: true
  end
end
