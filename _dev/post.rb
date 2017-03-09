class Post < ApplicationRecord
  has_many :tags, through: :post_tags
  has_many :post_tags
  has_many :comments
  belongs_to :users

  has_attached_file :image, :styles => lambda { |attachment| { :thumb =>
		(attachment.instance.title == 'Special' ? "100x100#" : "64x64#") } }
  validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

end