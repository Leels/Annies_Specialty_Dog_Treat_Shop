require 'rails_helper'

describe Product do

  context '(associations)' do
    it { should have_many(:reviews) }
  end

  context '(validations)' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :cost }
    it { should validate_numericality_of :cost }
    it { should validate_presence_of :country_of_origin }
  end

  context '(callbacks)' do
    it("titleizes the name of a product and country_of_origin") do
      product = Product.create({name: "biscuit", cost: "3.00", country_of_origin: "England"})
      expect(product.name()).to(eq("Biscuit"))
    end
  end

  # context '(scopes)' do
  #     it 'selects the product with the most reviews' do
  #         product1 = Product.create({name: "biscuit", cost: "3.00", country_of_origin: "England"})
  #
  #
  #     end
  # end
end
