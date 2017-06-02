class Team < ActiveRecord::Base

	has_many :projects
	has_many :capitans
	has_many :players
	has_many :challenges
	has_many :advantages
	has_many :concepts
	has_many :propositions
	has_many :prototypes

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
