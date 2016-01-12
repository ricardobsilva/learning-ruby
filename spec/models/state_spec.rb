require 'rails_helper'

RSpec.describe State, type: :model do
  it { is_expected.to validate_uniqueness_of(:name) }
  it { is_expected.to belong_to(:address) }
  it { is_expected.to have_many(:cities) }
  it { is_expected.to have_one(:capital) }
end
