class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :first_name
      t.string :last_name
      t.text :profile_photo
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
