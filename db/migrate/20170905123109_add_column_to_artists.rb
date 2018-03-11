class AddColumnToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :profile, :text
  end
end
