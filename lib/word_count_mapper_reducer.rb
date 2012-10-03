class WordCountMapperReducer < Hash
  def initialize(data_source)
    super()

    mapped = data_source.map { |l| l.split(' ') }
    mapped.flatten!

    mapped.uniq.each do |k|
      self[k] = mapped.reduce(0) { |sum, w| w == k ? sum + 1 : sum }
    end
  end
end
