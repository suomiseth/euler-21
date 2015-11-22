# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

class AmicableNumbersSum


  def initialize(limt)
    @limit = limit
  end  

  def find_amicable_nums
    
  end

  def sum
    find_amicable_nums.inject(:+)
  end

end


puts "what number do you want to check amicable numbers to?"
limit = gets.strip
AmicableNumbersSum.new(limit).sum