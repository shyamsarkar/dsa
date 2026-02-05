class PriorityQueue
  def initialize
    @heap = []
  end

  def push(priority, item)
    @heap << [priority, item]
    bubble_up(@heap.size - 1)
  end

  def pop
    return nil if @heap.empty?
    
    swap(0, @heap.size - 1)
    priority, item = @heap.pop
    bubble_down(0) unless @heap.empty?
    item
  end

  def empty?
    @heap.empty?
  end

  private

  def bubble_up(index)
    return if index == 0
    
    parent = (index - 1) / 2
    if @heap[index][0] < @heap[parent][0]
      swap(index, parent)
      bubble_up(parent)
    end
  end

  def bubble_down(index)
    left = 2 * index + 1
    right = 2 * index + 2
    smallest = index

    smallest = left if left < @heap.size && @heap[left][0] < @heap[smallest][0]
    smallest = right if right < @heap.size && @heap[right][0] < @heap[smallest][0]

    if smallest != index
      swap(index, smallest)
      bubble_down(smallest)
    end
  end

  def swap(i, j)
    @heap[i], @heap[j] = @heap[j], @heap[i]
  end
end
