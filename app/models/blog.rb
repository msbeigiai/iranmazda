class Blog < ApplicationRecord
  mount_uploader :picture, PictureUploader
  
  extend FriendlyId
  friendly_id :title_url, use: :slugged
end
