class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.text :body
      t.string :image
      t.date :date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
