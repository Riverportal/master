class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name
      t.integer :age
      t.date :dob
      t.string :city
      t.datetime :gender
      t.string :state
      t.float :amount
      t.string :address
      t.text :description

      t.timestamps null: false
    end
  end
end
