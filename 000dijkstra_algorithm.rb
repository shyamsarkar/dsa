# require 'debug'
require './000PriorityQueue.rb'
def dijkstra(graph, start, finish)
  distances = Hash.new(Float::INFINITY)
  previous = {}
  visited = Set.new

  distances[start] = 0
  
  # Priority queue: [node, distance]
  pq = PriorityQueue.new
  pq.push(0, start)
  
  
  until pq.empty?
    current = pq.pop
    
    next if visited.include?(current)
    visited.add(current)
    
    break if current == finish
    
    graph[current]&.each do |neighbor, weight|
      next if visited.include?(neighbor)
      
      new_distance = distances[current] + weight
      
      if new_distance < distances[neighbor]
        distances[neighbor] = new_distance
        previous[neighbor] = current
        pq.push(new_distance, neighbor)
      end
    end
  end
  
  # Reconstruct path
  path = []
  current = finish
  
  while current
    path.unshift(current)
    current = previous[current]
  end
  
  # Return nil if no path exists
  return nil if path.first != start
  
  { distance: distances[finish], path: path }
end

# Example usage
graph = {
  'A' => { 'B' => 4, 'C' => 2 },
  'B' => { 'A' => 4, 'C' => 1, 'D' => 5 },
  'C' => { 'A' => 2, 'B' => 1, 'D' => 8, 'E' => 10 },
  'D' => { 'B' => 5, 'C' => 8, 'E' => 2, 'F' => 6 },
  'E' => { 'C' => 10, 'D' => 2, 'F' => 3 },
  'F' => { 'D' => 6, 'E' => 3 }
}

result = dijkstra(graph, 'A', 'F')

if result
  puts "Shortest distance from A to F: #{result[:distance]}"
  puts "Path: #{result[:path].join(' -> ')}"
else
  puts "No path found"
end

# Test with another example
puts "\n--- Another Example ---"
result2 = dijkstra(graph, 'A', 'E')
if result2
  puts "Shortest distance from A to E: #{result2[:distance]}"
  puts "Path: #{result2[:path].join(' -> ')}"
end