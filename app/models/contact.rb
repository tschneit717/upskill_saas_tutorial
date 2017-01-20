class Contact < ActiveRecord::Base
  # Contact form validations
  validates :name, presence: true
  validates :email, presence: true, inclusion: { in: %w(@),
    message: " is not a valid address" }
  validates :comments, presence: true
end
