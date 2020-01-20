class AddImgToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column(:reviews, :img, :string)
  end
end
