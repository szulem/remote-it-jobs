class Job < ApplicationRecord
  belongs_to :category
  belongs_to :user

  has_attached_file :company_logo, styles: { medium: "234x300>", thumb: "100x100>", mini: "80x40>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :company_logo, content_type: /\Aimage\/.*\z/
end
