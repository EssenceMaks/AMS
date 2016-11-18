class Amsstone < ActiveRecord::Base
  has_attached_file :imagestone, styles: { medium: "252x302#", thumb: "100x100#" }, default_url: "/images/:style/points.png"
  validates_attachment_content_type :imagestone, content_type: /\Aimage\/.*\z/
end
