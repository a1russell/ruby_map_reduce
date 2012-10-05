class WordCountMapperReducer < Hash
  def initialize(data_source)
    super()

    mapped = data_source.map { |l| l.split(' ') }
    mapped.flatten!

    mapped.uniq.each do |k|
      self[k] = mapped.count(k)
    end
  end
end
