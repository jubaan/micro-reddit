# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :author
  has_many :comments

  validates_length_of :title, within: 4..50, too_long: ': pick a shorter title', too_short: ': pick a title'
  validates :body, presence: true
end
