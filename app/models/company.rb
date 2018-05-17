class Company < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  enum status: [:publicado, :despublicado]
  mount_uploader :logo, AvatarUploader
end
