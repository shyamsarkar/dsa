# 111. Minimum Depth of Binary Tree

=begin
Given a binary tree, find its minimum depth.

The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.

Note: A leaf is a node with no children.

 

Example 1:


Input: root = [3,9,20,null,null,15,7]
Output: 2
Example 2:

Input: root = [2,null,3,null,4,null,5,null,6]
Output: 5
 

Constraints:

The number of nodes in the tree is in the range [0, 105].
-1000 <= Node.val <= 1000
 
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


# Recursive Solution (Ruby – DFS)

def min_depth(root)
  return 0 if root.nil?

  if root.left.nil?
    return min_depth(root.right) + 1
  end

  if root.right.nil?
    return min_depth(root.left) + 1
  end

  [min_depth(root.left), min_depth(root.right)].min + 1
end


# BFS Solution (Best for Interviews)


def min_depth(root)
  return 0 if root.nil?

  queue = [[root, 1]]

  until queue.empty?
    node, depth = queue.shift

    return depth if node.left.nil? && node.right.nil?

    queue << [node.left, depth + 1] if node.left
    queue << [node.right, depth + 1] if node.right
  end
end
