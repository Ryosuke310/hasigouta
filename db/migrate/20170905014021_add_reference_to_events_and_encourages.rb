class AddReferenceToEventsAndEncourages < ActiveRecord::Migration
  def change
    remove_column :events, :artist_id, :integer
    remove_column :encourages, :artist_id, :integer
    remove_column :encourages, :user_id, :integer
    add_reference :events, :artist, index: true
    add_reference :encourages, :artist, index: true
    add_reference :encourages, :user, index: true
  end
end
