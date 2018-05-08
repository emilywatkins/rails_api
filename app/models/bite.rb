class Bite < ApplicationRecord

  scope :search, -> (species) { where("species like ?", "%#{species}%")}
end
