class Post < ApplicationRecord
  has_many :tags, through: :post_tags
  has_many :post_tags
  has_many :comments




  validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

end
