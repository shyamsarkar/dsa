# 104. Maximum Depth of Binary Tree

=begin
Given the root of a binary tree, return its maximum depth.

A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

 

Example 1:


Input: root = [3,9,20,null,null,15,7]
Output: 3
Example 2:

Input: root = [1,null,2]
Output: 2
 

Constraints:

The number of nodes in the tree is in the range [0, 104].
-100 <= Node.val <= 100
 
Seen this question in a real interview before?
1/5
=end

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}

# Ruby Solution (Recursive – DFS)
def max_depth(root)
  return 0 if root.nil?

  left_depth  = max_depth(root.left)
  right_depth = max_depth(root.right)

  1 + [left_depth, right_depth].max
end


# Iterative Solution (BFS – Level Order)

def max_depth(root)
  return 0 if root.nil?

  depth = 0
  queue = [root]

  until queue.empty?
    level_size = queue.size
    depth += 1

    level_size.times do
      node = queue.shift
      queue << node.left  if node.left
      queue << node.right if node.right
    end
  end

  depth
end
