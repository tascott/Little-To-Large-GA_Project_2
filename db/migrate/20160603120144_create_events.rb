class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :location
      t.text :body
      t.text :image
      t.string :date
      t.references :user, index: true, foreign_key: true
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
