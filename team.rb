class Team

attr_reader :name, :players
attr_accessor :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  # def get_team_name()
  #   return @name
  # end
  #
  # def get_team_players
  #   return @players
  # end
  #
  # def get_team_coach
  #   return @coach
  # end
  #
  # def set_team_coach(coach)
  #   @coach = coach
  # end

  def add_team_player()
    return @players += 1
  end

end
