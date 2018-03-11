class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :place_prefecture
      t.string :place_city
      t.string :place_station
      t.string :place_detail
      t.string :date
      t.string :time
      t.string :event_detail

      t.timestamps null: false
    end
  end
end
