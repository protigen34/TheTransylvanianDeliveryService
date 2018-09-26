require 'rails_helper'

describe Comment do

  context "when comment without user" do

    it "is not valid" do
      expect(Comment.new).not_to be_valid
    end
  end
end