class ChangeClumnNameToFrequencyPlace < ActiveRecord::Migration
  def change
    remove_column :artists, :frequensy_plase, :string
    add_column :artists, :frequency_place, :string
  end
end
