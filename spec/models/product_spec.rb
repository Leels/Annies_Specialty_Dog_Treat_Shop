require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_numericality_of :cost }
  it { should validate_presence_of :country_of_origin }
  it("titleizes the name of a product and country_of_origin") do
   product = Product.create({name: "biscuit", cost: "3.00", country_of_origin: "england"})
   expect(product.name()).to(eq("Biscuit"))
   expect(product.country_of_origin()).to(eq("England"))
 end
end
