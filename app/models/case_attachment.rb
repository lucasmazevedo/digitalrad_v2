class CaseAttachment < ApplicationRecord
  mount_uploader :photo, AvatarUploader
   belongs_to :case
end
