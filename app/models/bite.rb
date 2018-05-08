class Bite < ApplicationRecord

  scope :search, -> (species) { where("species ILIKE ?", "%#{species}%")}
end
