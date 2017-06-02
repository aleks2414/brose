class Advantage < ActiveRecord::Base
  belongs_to :team
  has_many :second_reviews

  mount_uploader :boceto, BocetoUploader
  mount_uploader :infografia, InfografiaUploader
end
