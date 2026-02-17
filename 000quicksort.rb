def quicksort(arr, low = 0, high = arr.length - 1)
  if low < high
    pi = partition(arr, low, high)
    quicksort(arr, low, pi - 1)
    quicksort(arr, pi + 1, high)
  end
end

def partition(arr, low, high)
  pivot = arr[high]
  i = low - 1

  (low...high).each do |j|
    if arr[j] <= pivot
      i += 1
      arr[i], arr[j] = arr[j], arr[i]
    end
  end

  arr[i + 1], arr[high] = arr[high], arr[i + 1]
  i + 1
end

# arr = [5, 3, 8, 4, 2]
=begin
arr = [3, 7, 1, 4, 9, 2, 8, 0, 6, 5]
quicksort(arr)
puts arr.inspect

[3, 7, 1, 4, 9, 2, 8, 0, 6, 5] j=0 i=0 arr[j]<=pivot
[3, 7, 1, 4, 9, 2, 8, 0, 6, 5] j=1 i=0
[3, 1, 7, 4, 9, 2, 8, 0, 6, 5] j=2 i=1 arr[j]<=pivot
[3, 1, 4, 7, 9, 2, 8, 0, 6, 5] j=3 i=2
[3, 1, 4, 7, 9, 2, 8, 0, 6, 5] j=4 i=2
[3, 1, 4, 2, 9, 7, 8, 0, 6, 5] j=5 i=3 arr[j]<=pivot
[3, 1, 4, 2, 9, 7, 8, 0, 6, 5] j=6 i=3
[3, 1, 4, 2, 0, 7, 8, 9, 6, 5] j=7 i=4 arr[j]<=pivot
[3, 1, 4, 2, 0, 7, 8, 9, 6, 5] j=8 i=4
[3, 1, 4, 2, 0, 5, 8, 9, 6, 7] i=4+1=5

https://shyamsarkar.github.io/sorting_animation/
=end