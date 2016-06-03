class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :name
      t.text :body
      t.references :event, index: true, foreign_key: true
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
