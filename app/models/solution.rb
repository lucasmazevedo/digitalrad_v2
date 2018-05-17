class Solution < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  enum status: [:publicado, :despublicado]
  #mount_uploader :photo, AvatarUploader
end
