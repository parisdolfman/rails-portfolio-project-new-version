class AddCategoryIdToRentals < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :category_id, :integer
  end
end
