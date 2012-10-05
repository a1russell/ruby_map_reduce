require 'test/unit'

require_relative '../lib/movie_rating_by_year_mapper_reducer'
require_relative '../lib/movie_data_source'
require_relative '../lib/year_with_highest_rating'


class TestYearWithHighestRatingMapperReducer < Test::Unit::TestCase
  def test_finds_year_with_highest_movie_rating
    dir = File.dirname(__FILE__)
    data_source = MovieDataSource.new File.join(dir, '..', 'movies.txt')
    movies_by_year = MovieRatingByYearMapperReducer.new(data_source)
    mapper_reducer = YearWithHighestRating.new(movies_by_year)

    assert_equal(1994, mapper_reducer.to_i)
  end
end
