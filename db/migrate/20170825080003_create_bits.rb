class CreateBits < ActiveRecord::Migration
  def change
    create_table :bits do |t|
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
