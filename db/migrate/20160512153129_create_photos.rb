class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.integer :retrieved_id
      t.integer :album_id
      t.integer :retrieved_album_id
      t.string :thumbnail_url
      t.string :url

      t.timestamps null: false
    end
  end
end
