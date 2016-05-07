require 'rails_helper'

RSpec.describe SetList, type: :model do
  it { should validate_numericality_of(:target_length_in_seconds).is_greater_than_or_equal_to(0) }
end
