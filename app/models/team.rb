class Team < ActiveRecord::Base

	has_many :projects
	has_many :capitans
	has_many :players
	has_many :challenges
	has_many :advantages
	has_many :concepts
	has_many :propositions
	has_many :prototypes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



end
