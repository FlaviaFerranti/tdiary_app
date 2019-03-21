class Travel < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) } #visualizzare post dal più recente al più vecchio
  validates :user_id, presence: true
  validates :title, presence: true, length: {minimum: 2}

  validates :description, length: { maximum: 300 }
  mount_uploader :images, ImagesUploader

  validates_processing_of :images
  validate :image_size_validation

  private

  def image_size_validation
    if images.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
    end
  end

end
