class Course < ApplicationRecord
	belongs_to :author
	has_many :comments

	mount_uploader :pdf, PdfUploader 
end
