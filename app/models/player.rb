class Player < ActiveRecord::Base
  belongs_to :team

validate :just_five_players, :on => :create 


protected  
def just_five_players 
	if team.players.count >= 4 
	errors.add(:team_id, "El equipo ya tiene 5 integrantes") 
  end 
end

end
