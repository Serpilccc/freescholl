class Course < ApplicationRecord
	belongs_to :author
	has_many :comments

	mount_uploader :pdf, PdfUploader 

	def self.search(search)
		if search
			where(["titre LiKE ?","%#{search}%"])
		else
			all
		end
	end
end
