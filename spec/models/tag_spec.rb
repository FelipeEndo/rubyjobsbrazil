require 'spec_helper'

describe Tag do
  describe "#name" do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).case_insensitive }
  end
end
