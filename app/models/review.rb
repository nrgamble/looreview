class Review < ApplicationRecord

  belongs_to :loo
  belongs_to :user
  belongs_to :trip

  has_many :review_notes
  has_many :notes, through: :review_notes
  
end
