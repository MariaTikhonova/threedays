class City < ApplicationRecord
	default_scope -> { order(:name =>  :asc ) }
	has_many :places

	has_attached_file :image, styles: { medium: "300x300", thumb: "100x100" }, default_url: "/images/paris.jpg"
		#validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
	
	
end
