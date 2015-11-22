require "pry-byebug"

class AmicableNumbersSum

  def initialize(limit)
    @limit = limit.to_i
  end  

  def sum
    find_amicable_nums.inject(:+)
  end

  def find_amicable_nums
    sums = (1..@limit).inject(Hash.new) do |hash, n| 
      hash[n] = divisor_sum(n)
      hash
    end
    find_dups(sums)
  end

  def divisor_sum(n)
    (1..(n / 2)).select {|x| n % x == 0}.inject(:+)
  end

  def find_dups(hash)
    hash.select do |num, sum|
      hash[sum] && hash[sum] == num && num != sum
    end.values
  end
end

puts "what number do you want to check amicable numbers to?"
limit = gets.strip
puts AmicableNumbersSum.new(limit).sum