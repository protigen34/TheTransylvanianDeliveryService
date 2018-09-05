require 'rails_helper'

describe Product do
    
    let(:product) { Product.create!(name: "race bike") }
    
    let(:user) {User.create!(email: "somepleb271@yahoo.com", password: "20thcentury")}
    before do
        product.comments.create!(rating: 1, user: user, body: "Bad")
        product.comments.create!(rating: 3, user: user, body: "Decent")
        product.comments.create!(rating: 5, user: user, body: "Great")
    end

    it "returns the average rating off all comments" do
        expect(product.average_rating).to eq 3
    end
    
    it "is not valid without a name" do
        expect(Product.new(description: "Good on this frame")).not_to be_valid
    end
end
