class Job < ApplicationRecord
  # after_update :update_activated_at

  belongs_to :category
  belongs_to :user

  has_one_attached :company_logo do |attachable|
    attachable.variant :medium, resize_to_limit: [234, 300]
    attachable.variant :thumb, resize_to_limit: [100, 100]
    attachable.variant :mini, resize_to_limit: [80, 40]
    attachable.variant :micro, resize_to_limit: [50, 50]
  end

  paginates_per 15

  validates :title, presence: true, length: { minimum: 5, maximum: 60 }
  validates :description, presence: true
  validates :email, presence: true
  validates :url, presence: true
  validates :salary_from, :salary_to, presence: true
  validates :salary_per, presence: true
  validates :currency, presence: true
  validates :category_id, presence: true
  validates :company_name, presence: true
  validates :company_size, presence: true
  validates :location_requirement, presence: true
  # validates :company_logo, presence: true

  acts_as_taggable_on :tags

  # has_attached_file :company_logo, styles: { medium: "234x300>", thumb: "100x100>", mini: "80x40>", micro: "50x50>" }, default_url: "/images/:style/missing.png"
  # validates_attachment_content_type :company_logo, content_type: /\Aimage\/.*\z/

  # set ID to the new offers
  after_commit :update_slug, on: :create
  def update_slug
    unless slug.include? self.id.to_s
      self.slug = nil
      self.save
    end
  end

  extend FriendlyId
  friendly_id :company_and_title, use: :slugged
  def company_and_title
    "#{id} remote #{title} at #{company_name}"
  end

  # it change the job's url after update
  def should_generate_new_friendly_id?
    company_name_changed? || title_changed? || status_changed? || super
  end

  # set actual time when job status changes to true
  def update_activated_at
    if status_before_last_save == false
      update_attributes(activated_at: Time.now)
    end
  end

end
