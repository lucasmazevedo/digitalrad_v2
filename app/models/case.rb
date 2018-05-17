class Case < ApplicationRecord
  has_many :case_attachments
  accepts_nested_attributes_for :case_attachments
  enum status: [:publicado, :despublicado]
end
