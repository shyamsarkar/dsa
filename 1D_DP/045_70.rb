# 70. Climbing Stairs

=begin
You are climbing a staircase. It takes n steps to reach the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

 

Example 1:

Input: n = 2
Output: 2
Explanation: There are two ways to climb to the top.
1. 1 step + 1 step
2. 2 steps
Example 2:

Input: n = 3
Output: 3
Explanation: There are three ways to climb to the top.
1. 1 step + 1 step + 1 step
2. 1 step + 2 steps
3. 2 steps + 1 step
 

Constraints:

1 <= n <= 45
 
Seen this question in a real interview before?
1/5
=end

# Approach 1: Dynamic Programming (Bottom-up)

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  return n if n <= 2
  
  # dp[i] represents number of ways to reach step i
  dp = Array.new(n + 1)
  dp[1] = 1
  dp[2] = 2
  
  (3..n).each do |i|
    dp[i] = dp[i - 1] + dp[i - 2]
  end
  
  dp[n]
end

# Approach 2: Space-Optimized DP (Recommended)

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  return n if n <= 2
  
  prev2 = 1  # ways to reach step 1
  prev1 = 2  # ways to reach step 2
  
  (3..n).each do |i|
    current = prev1 + prev2
    prev2 = prev1
    prev1 = current
  end
  
  prev1
end