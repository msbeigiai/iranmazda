class Blog < ApplicationRecord
  validates :title, presence: true
  mount_uploader :picture, PictureUploader
  
  extend FriendlyId
  friendly_id :title_url, use: :slugged
  
  def slug=(value)
    if value.present?
      write_attribute(:slug, value)
    end
  end
end
