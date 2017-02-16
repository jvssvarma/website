class Guide < ApplicationRecord
  has_attached_file :image, styles: { medium: "750x500>", thumb: "400x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  extend FriendlyId
	friendly_id :title, use: :slugged
  is_impressionable
end
