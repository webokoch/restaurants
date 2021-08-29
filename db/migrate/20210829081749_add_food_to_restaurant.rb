class AddFoodToRestaurant < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :food, :string
  end
end
