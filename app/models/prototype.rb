class Prototype < ActiveRecord::Base
  belongs_to :team
  has_many :fifth_reviews

  mount_uploader :PMV, PmvUploader
  mount_uploader :resumen2, Resumen2Uploader
end
