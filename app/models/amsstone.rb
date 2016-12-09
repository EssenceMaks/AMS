class Amsstone < ActiveRecord::Base

  belongs_to :user
  belongs_to :stonecategory


  has_attached_file :imagestone, styles: { small: "116x116#" , medium: "252x302#", simple: "350x350#" , thumb: "150x150#", hard: "1152x1000#" }, default_url: "/images/:style/points.png"
  validates_attachment_content_type :imagestone, content_type: /\Aimage\/.*\z/

  translates :titlerus, :descriptionrus
end
