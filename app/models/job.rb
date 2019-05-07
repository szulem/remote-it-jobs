class Job < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :title, presence: true, length: { minimum: 5, maximum: 50 }
  validates :description, presence: true
  validates :email, presence: true
  validates :url, presence: true
  validates :salary_from, :salary_to, presence: true
  validates :salary_per, presence: true
  validates :currency, presence: true
  validates :category_id, presence: true
  validates :company_name, presence: true
  # validates :company_logo, presence: true

  has_attached_file :company_logo, styles: { medium: "234x300>", thumb: "100x100>", mini: "80x40>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :company_logo, content_type: /\Aimage\/.*\z/

  extend FriendlyId
  friendly_id :title, use: :slugged
end
