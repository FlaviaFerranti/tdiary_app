class Comment < ApplicationRecord
  belongs_to :travel
  belongs_to :user
end
