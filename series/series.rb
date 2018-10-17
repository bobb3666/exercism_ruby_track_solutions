class Series

  def initialize(series)
    @series = series.to_s
  end

  def slices(number_slices)
    raise ArgumentError if number_slices > @series.size

    (0..@series.size - number_slices).map do |i|
      @series[i..i + number_slices - 1]
    end
  end

end
