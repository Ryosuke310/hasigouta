class AddblogIdToComments < ActiveRecord::Migration
  def change
    add_column :artists, :frequency_place, :string
  end
end
