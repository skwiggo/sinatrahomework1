class WordFormatter

  def initialize(string)
    @string = string
  end

  def upcase
    return @string.upcase
  end

  def camelcase
    @string.split.map.with_index { |x,i| i == 0 ? x : x.capitalize  }.join
  end
end