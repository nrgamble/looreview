class ReviewNote < ApplicationRecord

  belongs_to :review
  belongs_to :note

end
