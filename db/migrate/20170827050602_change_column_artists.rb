class ChangeColumnArtists < ActiveRecord::Migration
  def change
    remove_column :artists, :remfember_created_at, :datetime
    add_column :artists, :remember_created_at, :datetime
  end
end
