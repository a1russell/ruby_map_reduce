class MovieRatingByYearMapperReducer < Hash
  def initialize(data_source)
    super()

    years = data_source.map { |m| m.release_year }.uniq

    years.each do |y|
      movies_for_year = data_source.map { |m| m.release_year == y ? m : nil }.compact
      self[y] = movies_for_year.max_by { |m| m.rating }
    end
  end
end
