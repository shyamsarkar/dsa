# First K Different Elements

=begin
Given an integer array nums and an integer k, return the first k unique elements in the order they appear in the array.
Example 1:
Input:  nums = [1,1,1,2,2,3], k = 2
Output: [1,2]
Example 2:
Input:  nums = [1,2,3,1,2,3], k = 3
Output: [1,2,3]
Example 3:
Input:  nums = [5,5,5,5], k = 1
Output: [5]
Example 4:
Input:  nums = [1,2,3], k = 2
Output: [1,2]
Constraints:

1 <= nums.length <= 10⁵
-10⁴ <= nums[i] <= 10⁴
k is in the range [1, number of unique elements in the array]
=end

def first_k_different(nums, k)
  return [] if nums.nil?

  seen = {}
  result = []

  nums.each do |num|
    unless seen[num]
      seen[num] = true
      result << num
      return result if result.size == k
    end
  end

  result
end
