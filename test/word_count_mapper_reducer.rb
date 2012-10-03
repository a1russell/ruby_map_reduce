require 'test/unit'

require_relative '../lib/word_count_mapper_reducer'
require_relative '../lib/word_count_data_source'


class TestWordCountMapperReducer < Test::Unit::TestCase
  def test_counts_words
    data_source = WordCountDataSource.new
    mapper_reducer = WordCountMapperReducer.new(data_source)

    assert_equal(2, mapper_reducer['tom'])
    assert_equal(2, mapper_reducer['kim'])
    assert_equal(2, mapper_reducer['ian'])
    assert_equal(1, mapper_reducer['nancy'])
    assert_equal(1, mapper_reducer['bob'])
  end
end
