class Page < ApplicationRecord
  has_many :blocks
  extend FriendlyId
  friendly_id :title, use: :slugged
  enum status: [:publicado, :despublicado]
end
