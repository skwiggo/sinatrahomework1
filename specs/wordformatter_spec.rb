require('minitest/autorun')
require_relative('../models/wordformatter')

class TestWordformatter < Minitest::Test

  def setup
    @word = WordFormatter.new("eh7 5qw")
    @word2 = WordFormatter.new("foxhound")
  end

  def test_upcase
    assert_equal("EH7 5QW", @word.upcase)
  end

  def test_camelcase
    assert_equal("foxHound", @word2.camelcase)
  end
end