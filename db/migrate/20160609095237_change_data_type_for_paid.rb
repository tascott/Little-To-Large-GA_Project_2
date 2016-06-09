class ChangeDataTypeForPaid < ActiveRecord::Migration
  def change
    change_column(:subcategories, :paid, :boolean)
  end
end
