# 219. Contains Duplicate II

=begin
Given an integer array nums and an integer k, return true if there are two distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k.

 

Example 1:

Input: nums = [1,2,3,1], k = 3
Output: true
Example 2:

Input: nums = [1,0,1,1], k = 1
Output: true
Example 3:

Input: nums = [1,2,3,1,2,3], k = 2
Output: false
 

Constraints:

1 <= nums.length <= 105
-109 <= nums[i] <= 109
0 <= k <= 105
 
Seen this question in a real interview before?
1/5
=end

# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
    seen = Hash.new
    i = 0
    while i < nums.length
        return true if seen.key?(nums[i]) && (seen[nums[i]]-i).abs <= k
        seen[nums[i]] = i
        i += 1
    end
    false
end