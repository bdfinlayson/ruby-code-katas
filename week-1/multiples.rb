class Multiples
  def self.compute(range, numbers)
    begin
      find_multiples_of( numbers.map {|i| Integer i }, Integer(range) )
    rescue ArgumentError => error
      error.message
    end
  end

  private
    def self.find_multiples_of(numbers, range)
      r = Array(1..range)
      r.collect{ |r_num|
        r_num if numbers.map{ |n|
          n if r_num % n == 0 && r_num < range }
            .any? }
            .compact
    end
end
