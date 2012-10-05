require 'test/unit'

require_relative '../lib/movie_rating_by_year_mapper_reducer'
require_relative '../lib/movie_data_source'


class TestMovieRatingByYearMapperReducer < Test::Unit::TestCase
  def test_finds_highest_rated_movie_for_1994
    dir = File.dirname(__FILE__)
    data_source = MovieDataSource.new File.join(dir, '..', 'movies.txt')
    mapper_reducer = MovieRatingByYearMapperReducer.new(data_source)

    assert_equal("The Shawshank Redemption", mapper_reducer[1994].name)
  end
end
