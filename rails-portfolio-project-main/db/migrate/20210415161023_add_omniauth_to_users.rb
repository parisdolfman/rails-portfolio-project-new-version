class AddOmniauthToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :add_column_to_users, :string
    add_column :users, :provider, :string
    add_column :users, :uid, :string
  end
end
