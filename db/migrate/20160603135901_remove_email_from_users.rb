class RemoveEmailFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :email, :string
    remove_column :users, :password_digest, :string
  end
end
