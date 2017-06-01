class Advantage < ActiveRecord::Base
  belongs_to :team
  has_many :second_reviews
end
