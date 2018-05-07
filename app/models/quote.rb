class Quote < ApplicationRecord
  validates :author, presence: true
  validates :content, presence: true

  scope :search, -> (author_name) { where("author like ?", "%#{author_name}%")}
end
