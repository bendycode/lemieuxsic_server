require 'rails_helper'

RSpec.describe Song, type: :model do
  it {should validate_numericality_of(:length_in_seconds).is_greater_than_or_equal_to(0) }
  it {should validate_presence_of :length_in_seconds}
  it {should validate_presence_of :title}
end
