class CreateRentals < ActiveRecord::Migration[6.1]
  def change
    create_table :rentals do |t|
      t.string :street_add
      t.string :city
      t.string :state
      t.string :owner

      t.timestamps
    end
  end
end
