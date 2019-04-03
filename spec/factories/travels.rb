FactoryBot.define do

before do
        @user = FactoryBot.create(:user)
    end
  factory :travel do

    title {"title"}
    location {"location"}
    user_id {"1"}

  end
end
