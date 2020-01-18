class AddImgToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column(:products, :img, :string)
  end
end
