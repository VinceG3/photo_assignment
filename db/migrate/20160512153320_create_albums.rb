class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :retrieved_id
      t.integer :retrieved_user_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
