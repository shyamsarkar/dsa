# 347. Top K Frequent Elements

=begin
Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.

Example 1:
Input: nums = [1,1,1,2,2,3], k = 2
Output: [1,2]

Example 2:
Input: nums = [1], k = 1
Output: [1]

Example 3:
Input: nums = [1,2,1,2,1,2,3,1,3,2], k = 2
Output: [1,2]

Constraints:

1 <= nums.length <= 105
-104 <= nums[i] <= 104
k is in the range [1, the number of unique elements in the array].
It is guaranteed that the answer is unique.

Follow up: Your algorithm's time complexity must be better than O(n log n), where n is the array's size.
 
Seen this question in a real interview before?
1/6
=end

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  frequency = Hash.new(0)
  bucket = Array.new(nums.size+1) {[]}
  result = []

  nums.each { |num| frequency[num] += 1 }

  frequency.each do |num, count|
    bucket[count] << num
  end

  bucket.size.downto(1).each do |index|
    bucket[index-1].each do |num|
      result << num
      return result if result.size == k
    end
  end

  result
end
