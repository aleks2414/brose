class Concept < ActiveRecord::Base
  belongs_to :team
  has_many :third_reviews

  mount_uploader :entrevistas, EntrevistasUploader
  mount_uploader :propuesta, PropuestaUploader
  mount_uploader :boceto2, Boceto2Uploader
end
