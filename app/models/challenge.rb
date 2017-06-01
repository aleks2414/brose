class Challenge < ActiveRecord::Base
  belongs_to :team
  has_many :first_reviews
end
