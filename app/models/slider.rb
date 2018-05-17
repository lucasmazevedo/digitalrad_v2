class Slider < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  enum status: [:publicado, :despublicado]
  mount_uploader :hero_image, AvatarUploader
end
