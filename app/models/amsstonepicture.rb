class Amsstonepicture < ActiveRecord::Base
	
  belongs_to :user


  has_attached_file :imagestonepicture, styles: { medium: "631x185#", thumb: "100x100#" }, default_url: "/images/points.png"
  validates_attachment_content_type :imagestonepicture, content_type: /\Aimage\/.*\z/
end
