class Tag < ApplicationRecord
  has_many :photos, through: :photo_tags
  has_many :photo_tags
end
