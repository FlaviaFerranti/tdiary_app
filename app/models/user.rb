class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

    has_many :active_relationships, class_name: "Relationship",
                                    foreign_key: "follower_id",
                                    dependent: :destroy
    has_many :passive_relationships, class_name: "Relationship",
                                     foreign_key: "followed_id",
                                     dependent: :destroy
    has_many :following, through: :active_relationships, source: :followed
    has_many :followers, through: :passive_relationships, source: :follower

    has_many :travels, dependent: :destroy   # per distruggere i travel se un utente viene rimosso

    validates :nickname, presence: :true, uniqueness: { case_sensitive: false }

    validate :validate_nickname

    def validate_nickname
      if User.where(email: nickname).exists?
        errors.add(:nickname, :invalid)
      end
    end


        # Returns a user's status feed.
    def feed
        following_ids = "SELECT followed_id FROM relationships WHERE follower_id = :user_id"
        Travel.where("user_id IN (#{following_ids}) OR user_id = :user_id", user_id: id)
    end

    # Follows a user.
    def follow(other_user)
        active_relationships.create(followed_id: other_user.id)
    end

    # Unfollows a user.
    def unfollow(other_user)
        active_relationships.find_by(followed_id: other_user.id).destroy
    end

    # Returns true if the current user is following the other user.
    def following?(other_user)
        following.include?(other_user)
    end
end
