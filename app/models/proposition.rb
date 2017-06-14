class Proposition < ActiveRecord::Base
  belongs_to :team
  has_many :fourth_reviews

  mount_uploader :vpd, VpdUploader
end
