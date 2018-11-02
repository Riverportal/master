class CreateTourists < ActiveRecord::Migration
  def change
    create_table :tourists do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :mobile
      t.string :city
      t.string :tourist_place

      t.timestamps null: false
    end
  end
end
