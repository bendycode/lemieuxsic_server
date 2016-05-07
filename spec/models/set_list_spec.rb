require 'rails_helper'

RSpec.describe SetList, type: :model do
  it { expect(subject).to validate_numericality_of(:target_length_in_seconds).is_greater_than_or_equal_to(0) }
  it { expect(subject).to validate_presence_of :name }
  it { expect(subject).to have_and_belong_to_many :songs }
end
