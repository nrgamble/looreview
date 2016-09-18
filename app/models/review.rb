class Review < ApplicationRecord

  belongs_to :loo
  belongs_to :user
  belongs_to :trip

  has_many :review_notes
  has_many :notes, through: :review_notes

  after_create do
    self.loo.stars = self.loo.reviews.sum(:stars) / self.loo.reviews.count
    self.loo.save
  end
  
end
