class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.references :artist, index: true, foreign_key: true
      t.string :title
      t.string :content

      t.timestamps null: false
    end
  end
end
