# 215. Kth Largest Element in an Array

=begin
Given an integer array nums and an integer k, return the kth largest element in the array.

Note that it is the kth largest element in the sorted order, not the kth distinct element.

Can you solve it without sorting?

 

Example 1:

Input: nums = [3,2,1,5,6,4], k = 2
Output: 5
Example 2:

Input: nums = [3,2,3,1,2,4,5,5,6], k = 4
Output: 4
 

Constraints:

1 <= k <= nums.length <= 105
-104 <= nums[i] <= 104
 
Seen this question in a real interview before?
1/5
=end

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}


# Quick-Select Approach

def find_kth_largest(nums, k)
    target_index = nums.length - k
    quick_select(nums, 0, nums.length - 1, target_index)
end

def quick_select(arr, left, right, target_index)
    return arr[left] if left == right

    pivot_index = rand(left..right)
    arr[pivot_index], arr[right] = arr[right], arr[pivot_index]

    pivot_index = partition(arr, left, right)

    if pivot_index == target_index
        arr[pivot_index]
    elsif target_index < pivot_index
        quick_select(arr, left, pivot_index - 1, target_index)
    else
        quick_select(arr, pivot_index + 1, right, target_index)
    end
end

def partition(arr, left, right)
    pivot = arr[right]
    i = left - 1

    (left...right).each do |j|
        if arr[j] <= pivot
            i += 1
            arr[i], arr[j] = arr[j], arr[i]
        end
    end

    i += 1
    arr[i], arr[right] = arr[right], arr[i]
    i
end

# Min-Heap approach

def find_kth_largest(nums, k)
    heap = []

    nums.each do |num|
        heap = insert_item(heap, num)
        heap = remove_minimum(heap) if heap.length > k
    end

    heap[0]
end

def insert_item(heap, item)
    heap << item

    index = heap.length - 1
    while index > 0
        parent = (index - 1) / 2
        break if heap[index] >= heap[parent]

        if heap[index] < heap[parent]
            heap[index], heap[parent] = heap[parent], heap[index]
        end

        index = parent
    end

    heap
end

def remove_minimum(heap)
    heap[0], heap[-1] = heap[-1], heap[0]
    heap.pop

    index = 0

    while index < heap.length
        smallest = index
        left = 2 * index + 1
        right = 2 * index + 2

        smallest = left if left < heap.length && heap[left] < heap[smallest]
        smallest = right if right < heap.length && heap[right] < heap[smallest]

        break if smallest == index

        heap[index], heap[smallest] = heap[smallest], heap[index]
        index = smallest
    end

    heap
end