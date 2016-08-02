require 'spec_helper'

describe Score, :type => :model do
  it { should validate_presence_of(:user) }
  it { should validate_presence_of(:points) }
  it { should validate_numericality_of(:points).only_integer }
end
