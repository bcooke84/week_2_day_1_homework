class Team

attr_reader :name, :players
attr_accessor :coach

  def initialize(name, players, coach, points)
    @name = name
    @players = players
    @coach = coach
    @points = 0
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

  def add_team_player(new_player)
    return @players.push(new_player)
  end

  def check_if_player_exists(player_name)
    return @players.include?(player_name)
  end

  def team_result(result)
    if result == "W"
      @points += 3
    elsif result == "L"
      @points += 0
    end
  end


end
