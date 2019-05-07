class Category < ApplicationRecord
  has_many :jobs

  extend FriendlyId
  friendly_id :name, use: :slugged
  
  # def to_param
  #   name
  # end
  
end
