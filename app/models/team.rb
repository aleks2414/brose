class Team < ActiveRecord::Base

	has_many :projects, dependent: :destroy
	has_many :capitans, dependent: :destroy
	has_many :players, dependent: :destroy
	has_many :challenges, dependent: :destroy
	has_many :advantages, dependent: :destroy
	has_many :concepts, dependent: :destroy
	has_many :propositions, dependent: :destroy
	has_many :prototypes, dependent: :destroy

has_many :one_scores
has_many :two_scores
has_many :three_scores
has_many :four_scores
has_many :five_scores
has_many :six_scores
has_many :seven_scores

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def one_score_r1
    one_scores.count == 0 ? 0 : one_scores.average(:r1)+one_scores.average(:r2)+one_scores.average(:r3)+one_scores.average(:r4)+one_scores.average(:r5).round(2)
  end

  def two_score_r1
    two_scores.count == 0 ? 0 : two_scores.average(:r1)+two_scores.average(:r2).round(2)
  end

  def three_score_r1
    three_scores.count == 0 ? 0 : three_scores.average(:r1)+three_scores.average(:r2)+three_scores.average(:r3).round(2)
  end

  def four_score_r1
    four_scores.count == 0 ? 0 : four_scores.average(:r1)+four_scores.average(:r2)+four_scores.average(:r3).round(2)
  end

  def five_score_r1
    five_scores.count == 0 ? 0 : five_scores.average(:r1)+five_scores.average(:r2)+five_scores.average(:r3)+five_scores.average(:r4).round(2)
  end

  def six_score_r1
    six_scores.count == 0 ? 0 : six_scores.average(:r1)+six_scores.average(:r2)+six_scores.average(:r3)+six_scores.average(:r4)+six_scores.average(:r5)+six_scores.average(:r6)+six_scores.average(:r7)+six_scores.average(:r8)+six_scores.average(:r9)+six_scores.average(:r10)+six_scores.average(:r11)+six_scores.average(:r12)+six_scores.average(:r13)+six_scores.average(:r14).round(2)
  end

  def seven_score_r1
    seven_scores.count == 0 ? 0 : seven_scores.average(:r1)+seven_scores.average(:r2)+seven_scores.average(:r3)+seven_scores.average(:r4)+seven_scores.average(:r5)+seven_scores.average(:r6)+seven_scores.average(:r7)+seven_scores.average(:r8)+seven_scores.average(:r9).round(2)
  end

  def calificacion_de_filtrado
  	one_scores.count == 0 ? 0 : one_score_r1+two_score_r1+three_score_r1+four_score_r1.round(2)
  end

end
