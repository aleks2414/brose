class Team < ActiveRecord::Base

	has_many :projects, dependent: :destroy
	has_many :capitans, dependent: :destroy
	has_many :players, dependent: :destroy
	has_many :challenges, dependent: :destroy
	has_many :advantages, dependent: :destroy
	has_many :concepts, dependent: :destroy
	has_many :propositions, dependent: :destroy
	has_many :prototypes, dependent: :destroy

	# has_many :first_reviews, through: :challenges, dependent: :destroy
	# has_many :second_reviews, through: :advantages, dependent: :destroy
	# has_many :third_reviews, through: :concepts, dependent: :destroy
	# has_many :fourth_reviews, through: :propositions, dependent: :destroy
	# has_many :fifth_reviews, through: :prototypes, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



end
