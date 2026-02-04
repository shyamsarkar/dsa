# 202. Happy Number

=begin
Write an algorithm to determine if a number n is happy.

A happy number is a number defined by the following process:

Starting with any positive integer, replace the number by the sum of the squares of its digits.
Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
Those numbers for which this process ends in 1 are happy.
Return true if n is a happy number, and false if not.

 

Example 1:

Input: n = 19
Output: true
Explanation:
12 + 92 = 82
82 + 22 = 68
62 + 82 = 100
12 + 02 + 02 = 1

Input: n = 19
19 → 1² + 9² = 82
82 → 8² + 2² = 68
68 → 6² + 8² = 100
100 → 1² + 0² + 0² = 1 ✅

Example 2:

Input: n = 2
Output: false

Input: n = 2
2 → 4 → 16 → 37 → 58 → 89 → 145 → 42 → 20 → 4 (cycle)

Constraints:

1 <= n <= 231 - 1
 
Seen this question in a real interview before?
1/5
=end



# Ruby Solution (using Set)
def is_happy(n)
    seen = Set.new

    while n != 1
        return false if seen.include?(n)
        
        seen.add(n)
        n = n.digits.sum { |d| d * d }
    end

    true
end

# 🚀 Happy Number using Floyd’s Cycle Detection (O(1) Space)

def is_happy(n)
  slow = n
  fast = next_number(n)

  while fast != 1 && slow != fast
    slow = next_number(slow)
    fast = next_number(next_number(fast))
  end

  fast == 1
end

def next_number(n)
  sum = 0

  while n > 0
    digit = n % 10
    sum += digit * digit
    n /= 10
  end

  sum
end
