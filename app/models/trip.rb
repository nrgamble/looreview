class Trip < ApplicationRecord

  belongs_to :user
  belongs_to :loo
  
  has_one :review

end
