class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :artist_name
      t.string :image
      t.string :frequensy_plase
      t.string :twitter_id
      t.string :hp_url
      t.string :message

      t.timestamps null: false
    end
  end
end
