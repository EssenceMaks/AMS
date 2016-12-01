class Amsgroup < ActiveRecord::Base

  belongs_to :user
  belongs_to :groupcategory


	  has_attached_file :imagegroup, styles: { medium: "302x252#", thumb: "100x100#" }, default_url: "/images/:style/points.png"
  validates_attachment_content_type :imagegroup, content_type: /\Aimage\/.*\z/

  translates :titlerus, :descriptionrus
end
