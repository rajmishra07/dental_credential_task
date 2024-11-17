class Doctor < ApplicationRecord
  has_one_attached :signature
  has_one_attached :bundle

  validates :full_name, :username, :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :username, uniqueness: true
  validates :signature, content_type: ['image/png', 'image/jpg', 'image/jpeg']
  validates :bundle, content_type: ['application/zip']
end

