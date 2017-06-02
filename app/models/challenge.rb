class Challenge < ActiveRecord::Base
  belongs_to :team
  has_many :first_reviews

  mount_uploader :definicion, DefinicionUploader
  mount_uploader :resumen, ResumenUploader
  mount_uploader :reto_innovacion, RetoInnovacionUploader

end
