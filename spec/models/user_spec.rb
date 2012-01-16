require 'spec_helper'

describe User do
  before(:each) do
    FactoryGirl.create(:valid_friend)
  end

  it {should validate_presence_of(:name) }
  it {should ensure_inclusion_of(:latitude).in_range(0..90) }
  it {should ensure_inclusion_of(:longitude).in_range(0..180) }
  it {should allow_value('Valid name').for(:name) }
  it {should_not allow_value('This is most certainly an invalid name, I am sure of it!').for(:name) }
  it {should validate_uniqueness_of(:name) }
  it {should validate_uniqueness_of(:latitude).scoped_to(:longitude) }
  it {should validate_uniqueness_of(:longitude).scoped_to(:latitude) }
end
