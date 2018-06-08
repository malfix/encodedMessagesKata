require_relative "encoded_messages_kata"
require "test/unit"

class TestEncodedMessagesKata < Test::Unit::TestCase

  def test_empty
    assert_equal(0, EncodedMessagesKata.new([*1..26]).calc(""))
  end

  def test_found
    assert_equal(3, EncodedMessagesKata.new([*1..26]).calc("111")) # 1-1-1 11-1 1-11
    assert_equal(2, EncodedMessagesKata.new([*1..26]).calc("181")) # 1-8-1 18-1
    assert_equal(0, EncodedMessagesKata.new([*1..26]).calc("001"))
  end

end
