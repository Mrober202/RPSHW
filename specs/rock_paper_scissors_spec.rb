require 'minitest/autorun'
require_relative '../models/rock_paper_scissors'

class TestRockPaperScissors < MiniTest::Test

  def setup
    @rock_paper_scissors = RockPaperScissors.new("rock", "scissors")
  end

  def test_rock()
    assert_equal("rock wins", @rock_paper_scissors.rock())
  end
end