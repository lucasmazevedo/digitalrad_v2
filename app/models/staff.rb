class Staff < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  enum status: [:publicado, :despublicado]
  mount_uploader :photo, AvatarUploader
end
