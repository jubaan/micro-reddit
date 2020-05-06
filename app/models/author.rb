class Author < ApplicationRecord
  has_many :posts

  validates_length_of :name, :within => 6..20, :too_long => "pick a shorter name", :too_short => "pick a longer name"
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true
end
