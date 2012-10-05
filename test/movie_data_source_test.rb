require 'test/unit'

require_relative '../lib/movie_data_source'


class TestMovieDataSource < Test::Unit::TestCase
  def test_reads_movie_file
    dir = File.dirname(__FILE__)
    data_source = MovieDataSource.new File.join(dir, '..', 'movies.txt')

    assert_equal(999, data_source.count)
  end
end
