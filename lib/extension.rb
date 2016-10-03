class Array
  #reference: http://stackoverflow.com/questions/16422872/reimplementing-enumerable-map-method-in-ruby
  def my_map
    results = []
    if block_given?
      self.each { |entry| results << yield(entry) }
    else
      results = to_enum :my_map
    end
    results
  end
end
