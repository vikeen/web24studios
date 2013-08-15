class ApplyUpdateToUsers < ActiveRecord::Migration
  def change
    rename_column :users, :user_type_id, :admin
    add_column :users, :password_hash, :string
    add_column :users, :password_salt, :string
  end
end
