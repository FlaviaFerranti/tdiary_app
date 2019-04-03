require 'rails_helper'

RSpec.describe Travel, type: :model do
    before do
        @user = FactoryBot.create(:user)
    end
    it  "Create" do
        travel=Travel.new(:id => "1", :title => "Travel1",
            :location => "Rome", :user_id => @user.id)
        expect(travel).to be_valid
    end

    it "is not valid without a title" do
        travel=Travel.new(:id => "1", :title => nil,
            :location => "Rome", :user_id => @user.id)
        expect(travel).to_not be_valid
    end

    it "is not valid without a location" do
        travel=Travel.new(:id => "1", :title => "Travel1",
            :location => nil, :user_id => @user.id)
        expect(travel).to_not be_valid
    end

    it "is not valid with short title" do
        travel=Travel.new(:id => "1", :title => "t",
            :location => "Rome", :user_id => @user.id)
        expect(travel).to_not be_valid
    end

    it "is not valid with long description" do
        travel=Travel.new(:id => "1", :title => "title",
            :location => "Rome", :user_id => @user.id, :description =>"a"*401)
        expect(travel).to_not be_valid
    end




end
