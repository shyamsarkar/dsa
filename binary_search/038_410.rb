# 410. Split Array Largest Sum

=begin
Given an integer array nums and an integer k, split nums into k non-empty subarrays such that the largest sum of any subarray is minimized.

Return the minimized largest sum of the split.

A subarray is a contiguous part of the array.

 

Example 1:

Input: nums = [7,2,5,10,8], k = 2
Output: 18
Explanation: There are four ways to split nums into two subarrays.
The best way is to split it into [7,2,5] and [10,8], where the largest sum among the two subarrays is only 18.
Example 2:

Input: nums = [1,2,3,4,5], k = 2
Output: 9
Explanation: There are four ways to split nums into two subarrays.
The best way is to split it into [1,2,3] and [4,5], where the largest sum among the two subarrays is only 9.
 

Constraints:

1 <= nums.length <= 1000
0 <= nums[i] <= 106
1 <= k <= min(50, nums.length)
 
Seen this question in a real interview before?
1/5
=end

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def split_array(nums, k)
  left = nums.max
  right = nums.sum

  while left < right
    mid = left + (right-left)/2

    if can_split?(nums, k, mid)
      right = mid
    else
      left = mid + 1
    end
  end
  left
end

def can_split?(nums, k, max_sum)
  subarrays = 1
  current_sum = 0

  nums.each do |num|
    current_sum += num

    if current_sum > max_sum
      current_sum = num
      subarrays += 1
    end
  end

  subarrays <= k
end
