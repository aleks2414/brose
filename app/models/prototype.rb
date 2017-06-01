class Prototype < ActiveRecord::Base
  belongs_to :team
  has_many :fifth_reviews
end
