class Amsstone < ActiveRecord::Base

  belongs_to :user
  belongs_to :stonecategory


  has_attached_file :imagestone, styles: { medium: "252x302#", thumb: "150x150#", hard: "750x750#" }, default_url: "/images/:style/points.png"
  validates_attachment_content_type :imagestone, content_type: /\Aimage\/.*\z/

  translates :titlerus, :descriptionrus
end
