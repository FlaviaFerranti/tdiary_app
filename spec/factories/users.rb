FactoryBot.define do
  factory :user do

        email {"admin@admin.it"}
        password {"admin1"}
        password_confirmation { "admin1" }
        confirmed_at { Date.today }
        nickname {"nickname"}
        name {"name"}
        id {"1"}

  end
end
