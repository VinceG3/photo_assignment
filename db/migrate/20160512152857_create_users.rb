class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_name
      t.string :email
      t.string :address_street
      t.string :address_suite
      t.string :address_city
      t.string :address_zip_code
      t.string :phone
      t.string :website
      t.string :password
      t.integer :retrieved_id

      t.timestamps null: false
    end
  end
end
