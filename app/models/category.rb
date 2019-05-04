class Category < ApplicationRecord
	has_many :jobs

  def to_param
    name
  end
  
end
