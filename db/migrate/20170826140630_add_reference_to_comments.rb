class AddReferenceToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :blog, index: true
  end
end
