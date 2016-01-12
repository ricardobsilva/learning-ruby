require 'rails_helper'

RSpec.describe City, type: :model do
  it { is_expected.to belong_to(:state) }
end
