class WordCountDataSource
  include Enumerable

  def initialize
    @data = ["tom kim ian", "nancy bob tom kim", "ian"]
  end

  def each(&block)
    @data.each(&block)
  end
end
