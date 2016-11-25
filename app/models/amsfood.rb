class Amsfood < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  has_attached_file :imagefood, styles: { medium: "302x252#", thumb: "100x100#" }, default_url: "/images/:style/points.png"
  validates_attachment_content_type :imagefood, content_type: /\Aimage\/.*\z/	

  translates :titlerus, :descriptionrus
end
