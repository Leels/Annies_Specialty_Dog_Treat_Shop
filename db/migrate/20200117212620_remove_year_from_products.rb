class RemoveYearFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column(:products, :year)
  end
end
