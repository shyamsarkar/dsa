# Original: [42, 17, 8, 63, 5, 29, 91, 34, 12, 76, 3, 55]
# Min Heap: [3, 5, 8, 12, 17, 29, 91, 34, 63, 76, 42, 55]

# Original: [9, 4, 7, 1, 5, 2, 8, 3, 6]
# Min Heap: [1, 3, 2, 4, 5, 7, 8, 9, 6]

# Original: [15, 22, 13, 4, 8, 11, 27, 6]
# Min Heap: [4, 6, 11, 15, 8, 13, 27, 22]

# Original: [50, 30, 40, 10, 20, 35, 25, 5]
# Min Heap: [5, 10, 25, 30, 20, 35, 40, 50]

# Original: [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
# Min Heap: [1, 1, 2, 3, 3, 9, 4, 6, 5, 5, 5]

def build_min_heap(arr)
  (arr.size/2-1).downto(0) do |index|
    heapify(arr, index)
  end
end

def heapify(arr, index)
  smallest = index
  left = 2 * index + 1
  right = 2 * index + 2
  
  smallest = left if left < arr.size && arr[left] < arr[smallest]
  smallest = right if right < arr.size && arr[right] < arr[smallest]
  
  if smallest != index
    arr[smallest], arr[index] = arr[index], arr[smallest]
    heapify(arr, smallest)
  end
end
