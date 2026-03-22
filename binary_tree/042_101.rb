# 101. Symmetric Tree

=begin
Given the root of a binary tree, check whether it is a mirror of itself (i.e., symmetric around its center).

Example 1:
Input: root = [1,2,2,3,4,4,3]
Output: true

       1
     /   \
    2     2
   / \   / \
  3   4 4   3

Example 2:
Input: root = [1,2,2,null,3,null,3]
Output: false

Constraints:

The number of nodes in the tree is in the range [1, 1000].
-100 <= Node.val <= 100
 

Follow up: Could you solve it both recursively and iteratively?
 
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
# @return {Boolean}

# Recursive Approach

def is_symmetric(root)
  return true if root.nil?
  is_mirror(root.left, root.right)
end

def is_mirror(left, right)
  return true if left.nil? && right.nil?
  return false if left.nil? || right.nil?

  left.val == right.val &&
    is_mirror(left.left, right.right) &&
    is_mirror(left.right, right.left)
end

# Iterative Approach
def is_symmetric(root)
  return true if root.nil?

  stack = [[root.left, root.right]]

  until stack.empty?
    left, right = stack.pop
    next if left.nil? && right.nil?

    return false if left.nil? || right.nil?

    return false unless left.val == right.val

    stack << [left.left, right.right]
    stack << [left.right, right.left]
  end

  true
end