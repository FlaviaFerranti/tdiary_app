class Travel < ApplicationRecord
  acts_as_votable
  belongs_to :user
  geocoded_by :location
  after_validation :geocode, :if => :location_changed?
  default_scope -> { order(created_at: :desc) } #visualizzare post dal più recente al più vecchio
  validates :user_id, presence: true
  validates :title, presence: true, length: {minimum: 2}
  validates :location, presence: true
  validates :description, length: { maximum: 400 }
  mount_uploader :images, ImagesUploader
  mount_uploaders :multiples, ImagesUploader
  serialize :multiples, JSON # If you use SQLite, add this line.

  validates_processing_of :images
  validate :image_size_validation

  has_many :comments, dependent: :destroy

  private

  def image_size_validation
    if images.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
    end
  end

end
