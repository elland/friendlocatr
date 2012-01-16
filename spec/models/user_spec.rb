require 'spec_helper'

describe User do
  it {should validate_presence_of(:name) }
  it {should ensure_inclusion_of(:lat).in_range(0..90) }
  it {should ensure_inclusion_of(:lon).in_range(0..180) }
  it {should allow_value('Valid name').for(:name) }
  it {should_not allow_value('This is most certainly an invalid name, I am sure of it!').for(:name) }
end
