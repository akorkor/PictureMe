class Photo < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :photo_users
#  has_many :users, through: :photo_users
  acts_as_taggable

  has_attached_file :image,
    :styles => { :thumb => "64x64>", :original => "200x200>" },
    :default_url => "/images/DT2.jpeg",
    :convert_options => { :thumb => "-quality 75 -strip", :original => "-quality 95 -strip" }
  validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

end
