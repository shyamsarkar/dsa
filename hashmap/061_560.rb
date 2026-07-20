# 560. Subarray Sum Equals K

=begin
Given an array of integers nums and an integer k, return the total number of subarrays whose sum equals to k.

A subarray is a contiguous non-empty sequence of elements within an array.

Example 1:

Input: nums = [1,1,1], k = 2
Output: 2
Example 2:

Input: nums = [1,2,3], k = 3
Output: 2

Constraints:

1 <= nums.length <= 2 * 104
-1000 <= nums[i] <= 1000
-107 <= k <= 107
 
Seen this question in a real interview before?
1/6
=end

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def subarray_sum(nums, k)
  running_sum = 0
  count = 0
  freq = { 0 => 1 }

  nums.each do |num|
    running_sum += num
    count += freq.fetch(running_sum - k, 0)
    freq[running_sum] = freq.fetch(running_sum, 0) + 1
  end

  count
end
