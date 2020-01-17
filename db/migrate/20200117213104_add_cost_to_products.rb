class AddCostToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column(:products, :cost, :float)
  end
end
