require_relative 'movie'


class MovieDataSource
  include Enumerable

  def initialize(file_name)
    @data = []

    File.open(file_name) do |f|
      f.each_line do |l|
        fields = l.split(/\t/)
        @data << Movie.new(fields[2].strip,
                           Float(fields[1]),
                           Integer(fields[0]),
                           Integer(fields[3]))
      end
    end
  end

  def each(&block)
    @data.each(&block)
  end
end
