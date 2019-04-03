require 'rails_helper'

RSpec.describe User, type: :model do
  it  "Create User" do
        user=User.new(:id => "1", :email => "user@example.com", :name=> "Utente",
            :nickname => "u1", :password => "password", :created_at => Time.zone.now,
            :updated_at => Time.zone.now)
        expect(user).to be_valid
    end

    it  "Create admin" do
        user=User.new(:id => "2", :email => "admin@example.com", :name=> "admin",
            :nickname => "u2", :password => "password2", :created_at => Time.zone.now,
            :updated_at => Time.zone.now, :admin => true)
        expect(user).to be_valid
    end


    it "is not valid without a nickname" do
        user=User.new(:id => "1", :email => "user@example.com", :name=> "Utente",
            :nickname => nil, :password => "password", :created_at => Time.zone.now,
            :updated_at => Time.zone.now)
        expect(user).to_not be_valid
    end

    it "is not valid without a password" do
        user=User.new(:id => "1", :email => "user@example.com", :name=> "Utente",
            :nickname => "u1", :password => nil, :created_at => Time.zone.now,
            :updated_at => Time.zone.now)
        expect(user).to_not be_valid
    end

    it "is not valid with a short password" do
        user=User.new(:id => "1", :email => "user@example.com", :name=> "Utente",
            :nickname => "u1", :password => "short", :created_at => Time.zone.now,
            :updated_at => Time.zone.now)
        expect(user).to_not be_valid
    end

    it "is not valid without an email" do
        user=User.new(:id => "1", :email => nil, :name=> "Utente",
            :nickname => "u1", :password => "password", :created_at => Time.zone.now,
            :updated_at => Time.zone.now)
        expect(user).to_not be_valid
    end

    it "is not valid with an invalid email" do
        user=User.new(:id => "1", :email => "user,example.com", :name=> "Utente",
            :nickname => "u1", :password => "password", :created_at => Time.zone.now,
            :updated_at => Time.zone.now)
        expect(user).to_not be_valid
    end

end
