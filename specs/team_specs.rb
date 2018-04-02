require('minitest/autorun')
require_relative('../team.rb')

class TestTeam < MiniTest::Test

  def setup()
    @team = Team.new("Glasgow", 5, "Brian")
  end

  def test_get_team_name
    assert_equal("Glasgow", @team.name)
  end

  def test_get_team_players
    assert_equal(5, @team.players)
  end

  def test_get_team_coach
    assert_equal("Brian", @team.coach)
  end

  def test_set_team_coach
    @team.coach = "John"
    assert_equal("John", @team.coach)
  end

  def test_add_player_to_team
    
    assert_equal(6, @team.players)
  end

end
