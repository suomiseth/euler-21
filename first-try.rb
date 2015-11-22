# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

class AmicableNumbersSum

  def initialize(limt)
    @limit = limit
  end  

  def sum
    find_amicable_nums.inject(:+)
  end

  def find_amicable_nums
    (1..@limit).inject({}) {|hash, n| hash[n] = divisor_sum(n)}
  end

  def divisor_sum(n)
    (1..(n / 2)).select {|x| n % x == 0}.inject{:+}
  end
end


# brute force method
# go through each number to its limit and find the sum of divisors
# hash that number to the sum of its divisors
# see if there are any matches by iterating through (find dups)
# sum up the original numbers of 

puts "what number do you want to check amicable numbers to?"
limit = gets.strip
AmicableNumbersSum.new(limit).sum