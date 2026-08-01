# 503. Next Greater Element II

=begin
Given a circular integer array nums (i.e., the next element of nums[nums.length - 1] is nums[0]), return the next greater number for every element in nums.

The next greater number of a number x is the first greater number to its traversing-order next in the array, which means you could search circularly to find its next greater number. If it doesn't exist, return -1 for this number.

Example 1:

Input: nums = [1,2,1]
Output: [2,-1,2]
Explanation: The first 1's next greater number is 2; 
The number 2 can't find next greater number. 
The second 1's next greater number needs to search circularly, which is also 2.
Example 2:

Input: nums = [1,2,3,4,3]
Output: [2,3,4,-1,4]

Constraints:

1 <= nums.length <= 104
-109 <= nums[i] <= 109

Seen this question in a real interview before?
1/6
=end

# My Solution

# @param {Integer[]} nums
# @return {Integer[]}
def next_greater_elements(nums)
  stack = []
  result = Array.new(nums.size)

  index = 0
  while index < nums.size
    num = nums[index]
    while !stack.empty? && nums[stack[-1]] < num
      result[stack.pop] = num
    end

    stack << index
    index += 1
  end

  index = 0
  while !stack.empty? && index < nums.size
    num = nums[index]
    while !stack.empty? && nums[stack[-1]] < num
      result[stack.pop] = num
    end

    index += 1
  end

  stack.each do |index|
    result[index] = -1
  end

  result
end


# Better Solution

# @param {Integer[]} nums
# @return {Integer[]}
def next_greater_elements(nums)
  n = nums.length
  result = Array.new(n, -1)
  stack = []

  (2 * n - 1).downto(0) do |i|
    index = i % n

    while !stack.empty? && stack[-1] <= nums[index]
      stack.pop
    end

    result[index] = stack[-1] unless stack.empty?

    stack << nums[index]
  end

  result
end