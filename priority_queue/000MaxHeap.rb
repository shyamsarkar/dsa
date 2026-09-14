# Original: [42, 17, 8, 63, 5, 29, 91, 34, 12, 76, 3, 55]
# Max Heap: [91, 76, 55, 63, 17, 42, 8, 34, 12, 5, 3, 29]
 
# Original: [9, 4, 7, 1, 5, 2, 8, 3, 6]
# Max Heap: [9, 6, 8, 4, 5, 2, 7, 3, 1]

# Original: [15, 22, 13, 4, 8, 11, 27, 6]
# Max Heap: [27, 22, 15, 6, 8, 11, 13, 4]

# Original: [50, 30, 40, 10, 20, 35, 25, 5]
# Max Heap: [50, 30, 40, 10, 20, 35, 25, 5]

# Original: [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
# Max Heap: [9, 6, 4, 5, 5, 3, 2, 1, 1, 3, 5]



def build_max_heap(arr)
  index = arr.size - 1
  parent = (index-1)/2
  parent.downto(0) do |index|
    heapify(arr, index)
  end
end

def heapify(arr, index)
  largest = index
  left = 2 * index + 1
  right = 2 * index + 2
  
  largest = left if left < arr.size && arr[left] > arr[largest]
  largest = right if right < arr.size && arr[right] > arr[largest]
  
  if largest != index
    arr[largest], arr[index] = arr[index], arr[largest]
    heapify(arr, largest)
  end
end


class MaxHeap
  def initialize
    @heap = []
  end

  def push(item)
    @heap << item
    bubble_up(@heap.size - 1)
  end

  def pop
    return if @heap.empty?

    swap(0, @heap.size - 1)
    item = @heap.pop
    bubble_down(0)
    item
  end

  def peek
    @heap.first
  end

  def empty?
    @heap.empty?
  end

  private

  def bubble_up(index)
    return if index.zero?

    parent = (index - 1) / 2
    if @heap[index] > @heap[parent]
      swap(index, parent)
      bubble_up(parent)
    end
  end

  def bubble_down(index)
    left = index * 2 + 1
    right = index * 2 + 2

    largest = index
    largest = left if left < @heap.size && @heap[left] > @heap[largest]
    largest = right if right < @heap.size && @heap[right] > @heap[largest]

    if largest != index
      swap(largest, index)
      bubble_down(largest)
    end
  end

  def swap(i, j)
    @heap[i], @heap[j] = @heap[j], @heap[i]
  end
end
