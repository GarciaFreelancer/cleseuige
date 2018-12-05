class Course < ApplicationRecord
  belongs_to :category
  has_many :classcourses

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/curso-redes.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
