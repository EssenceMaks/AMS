class Amsgroup < ActiveRecord::Base
	  has_attached_file :imagegroup, styles: { medium: "302x252#", thumb: "100x100#" }, default_url: "/images/:style/points.png"
  validates_attachment_content_type :imagegroup, content_type: /\Aimage\/.*\z/
end
