class Structure < ApplicationRecord
  enum status: [:publicado, :despublicado]
  mount_uploader :photo, AvatarUploader
end
