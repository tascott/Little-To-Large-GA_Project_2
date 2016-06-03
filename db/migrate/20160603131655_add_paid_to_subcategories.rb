class AddPaidToSubcategories < ActiveRecord::Migration
  def change
     add_column :subcategories, :paid, :boolean
  end
end
