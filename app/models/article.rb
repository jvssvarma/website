class Article < ActiveRecord::Base

  has_attached_file :image, styles: { medium: "750x500>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  has_attached_file :cover, styles: { thumb: "300x200>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

  extend FriendlyId
	friendly_id :title, use: :slugged
  is_impressionable
end
