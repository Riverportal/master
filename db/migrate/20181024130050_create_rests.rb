class CreateRests < ActiveRecord::Migration
  def change
    create_table :rests do |t|
      t.time :worktime
      t.timestamp :workdate
      t.datetime :date
      t.float :amount
      t.decimal :interest
      t.binary :image

      t.timestamps null: false
    end
  end
end
