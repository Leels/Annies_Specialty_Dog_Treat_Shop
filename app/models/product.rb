class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :cost, numericality: true
  validates :country_of_origin, presence: true
  before_save(:titleize_product)

  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}

  scope :most_reviews, -> {(
      select("products.id, products.name, count(reviews.id) as reviews_count")
      .joins(:reviews)
      .group("products.id")
      .order("reviews_count DESC")
      .limit(1)
      )}

  scope :find_usa_product, -> (country_of_origin_parameter) {
   where(:country_of_origin => country_of_origin_parameter)
 }

  private
    def titleize_product
      self.name = self.name.titleize
    end
end
