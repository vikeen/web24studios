class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :email, :string
    add_column :users, :password_hash, :string
    add_column :users, :password_salt, :string
    add_column :users, :admin, :integer
  end
end
