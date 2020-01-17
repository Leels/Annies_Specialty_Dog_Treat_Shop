require 'rails_helper'

describe Review do
  it { should belong_to(:product) }
  it { should validate_presence_of :author }
  it { should validate_presence_of :rating }
  it { should validate_numericality_of :rating }
  it { should validate_length_of(:content_body).is_at_most(250) }
  it { should validate_length_of(:content_body).is_at_least(50) }
end
