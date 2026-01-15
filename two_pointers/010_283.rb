#283. Move Zeroes

=begin
Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

Note that you must do this in-place without making a copy of the array.

 

Example 1:

Input: nums = [0,1,0,3,12]
Output: [1,3,12,0,0]
Example 2:

Input: nums = [0]
Output: [0]
 

Constraints:

1 <= nums.length <= 104
-231 <= nums[i] <= 231 - 1
 

Follow up: Could you minimize the total number of operations done?
=end

def move_zeroes(nums)
    position = 0

    nums.each do |num|
        if num != 0
            nums[position] = num
            position += 1
        end
    end

    while position < nums.size
        nums[position] = 0
        position += 1
    end
end