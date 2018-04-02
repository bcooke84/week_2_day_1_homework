require('minitest/autorun')
require_relative('../team.rb')

class TestTeam < MiniTest::Test

  def setup()
    @team = Team.new("Glasgow", ["Ally", "Alistair", "Alan"], "Brian", 0)
  end

  def test_get_team_name
    assert_equal("Glasgow", @team.name)
  end

  def test_get_team_players
    assert_equal(["Ally", "Alistair", "Alan"], @team.players)
  end

  def test_get_team_coach
    assert_equal("Brian", @team.coach)
  end

  def test_set_team_coach
    @team.coach = "John"
    assert_equal("John", @team.coach)
  end

  def test_add_team_player
    @team.add_team_player("Upul")
    assert_equal(["Ally", "Alistair", "Alan", "Upul"], @team.players)
  end

  def test_check_if_player_exists
    assert_equal(true, @team.check_if_player_exists("Ally"))
  end

  def test_team_result__win
    assert_equal(3, @team.team_result("W"))
  end

  def test_team_result__lose
    assert_equal(0, @team.team_result("L"))
  end

end
