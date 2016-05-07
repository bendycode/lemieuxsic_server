require 'rails_helper'

RSpec.describe Song, type: :model do
  it { expect(subject).to validate_numericality_of(:length_in_seconds).is_greater_than_or_equal_to(0) }
  it { expect(subject).to validate_presence_of :length_in_seconds }
  it { expect(subject).to validate_presence_of :title }
  it { expect(subject).to have_and_belong_to_many :set_lists }
end
