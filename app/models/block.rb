class Block < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
    belongs_to :page

    enum position: [:inicio, :meio, :fim]
end
