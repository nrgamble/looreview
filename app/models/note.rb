class Note < ApplicationRecord

  has_many :review_notes
  has_many :reviews, through: :review_notes
  
end
