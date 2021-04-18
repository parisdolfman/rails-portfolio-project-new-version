class RemoveAddColumnToUsersFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :add_column_to_users, :string
  end
end
