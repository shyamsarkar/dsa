# 100. Same Tree

=begin
Given the roots of two binary trees p and q, write a function to check if they are the same or not.

Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.

 

Example 1:


Input: p = [1,2,3], q = [1,2,3]
Output: true
Example 2:


Input: p = [1,2], q = [1,null,2]
Output: false
Example 3:


Input: p = [1,2,1], q = [1,1,2]
Output: false
 

Constraints:

The number of nodes in both trees is in the range [0, 100].
-104 <= Node.val <= 104
 
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
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}

def is_same_tree(p, q)
    return true if p.nil? && q.nil?
  
    return false if p.nil? || q.nil?
  
    return false unless p.val == q.val
  
    is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
end


# Iterative Version (Bonus — Good for Interviews)

def is_same_tree(p, q)
  stack = [[p, q]]

  until stack.empty?
    node1, node2 = stack.pop

    next if node1.nil? && node2.nil?
    return false if node1.nil? || node2.nil?
    return false if node1.val != node2.val

    stack.push([node1.left, node2.left])
    stack.push([node1.right, node2.right])
  end

  true
end
