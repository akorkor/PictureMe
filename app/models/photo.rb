class Photo < ApplicationRecord
  has_many :comments
  belongs_to :user
  acts_as_taggable

  has_attached_file :image,
    :styles => { :thumb => "64x64>", :original => "100x100>" },
    :default_url => "/images/DT2.jpeg",
    :convert_options => { :thumb => "-quality 75 -strip", :original => "-quality 55 -strip" }
  validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

end
