class Tag < ApplicationRecord
  belongs_to :posts, through: :post_tags
  belongs_to :post_tags
end
