class Movie
  attr_accessor :name, :rating, :vote_count, :release_year

  def initialize(name, rating, vote_count, release_year)
    @name = name
    @rating = rating
    @vote_count = vote_count
    @release_year = release_year
  end
end
