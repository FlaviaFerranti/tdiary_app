require 'rails_helper'

RSpec.describe Comment, type: :model do

    before do
        @user = FactoryBot.create(:user)
        @travel = FactoryBot.create(:travel)
    end

    it "is not valid without a travel or user" do
        comment=Comment.new(:content => "contenuto")
        expect(comment).to_not be_valid
    end

    it "is not valid without a travel" do
        comment=Comment.new(:content => "contenuto", :user_id => @travel.user_id)
        expect(comment).to_not be_valid
    end

    it "is not valide without a user" do
        comment=Comment.new(:content => "contenuto", :travel_id => @travel.id)
        expect(comment).to_not be_valid
    end

    it "create" do
        comment=Comment.new(:content => "contenuto", :travel_id => @travel.id, :user_id => @travel.user_id)
        expect(comment).to be_valid
    end
end
