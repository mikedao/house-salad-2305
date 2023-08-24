require 'rails_helper'

describe CongressService do
  context "instance methods" do
    it "returns members" do
      facade = SearchFacade.new("CO")

      facade.members.each do |member|
        expect(member).to be_a Member
      end
    end

    it "can count members" do
      facade = SearchFacade.new("CO")
    
      expect(facade.members_count).to eq(8)
    end
  end
end