class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :name
      t.text :description
      t.integer :cost
      t.boolean :paid
      t.references :event, index: true, foreign_key: true
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
