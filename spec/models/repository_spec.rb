require 'rails_helper'

RSpec.describe Repository, type: :model do
  it { is_expected.to belong_to :user }
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :user }
  it { is_expected.to validate_presence_of :provider }
  it { is_expected.to validate_presence_of :url }
end
