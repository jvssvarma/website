class Post < ActiveRecord::Base

	has_attached_file :image, styles: { medium: "800x600>" },
		default_url: "/images/:style/missing.png",
		:url  => ":s3_domain_url",
		:path => "public/images/:id/:style_:basename.:extension",
		:storage => :fog,
		:fog_credentials => {
				provider: 'AWS',
				aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
				aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
				region: ENV["AWS_REGION"]
		},
		fog_directory: ENV["AWS_BUCKET"]

	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	extend FriendlyId
	friendly_id :title, use: :slugged
end
