class YearWithHighestRating
  attr_reader :to_i

  def initialize(data_source)
    @to_i = data_source.max_by { |y, m| m.rating }[0]
  end
end
