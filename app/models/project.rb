class Project < ActiveRecord::Base
	validates_presence_of :title, :description

	has_attached_file :image, styles: { medium: "800x600>", small: "350x250>", thumb: "150x150" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	extend FriendlyId
	friendly_id :title, use: :slugged
end
