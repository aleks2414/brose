class Concept < ActiveRecord::Base
  belongs_to :team
  has_many :third_reviews
end
