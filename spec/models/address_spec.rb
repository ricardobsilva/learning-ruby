require 'rails_helper'

RSpec.describe Address, type: :model do
  it { is_expected.to have_one(:state) }
end
