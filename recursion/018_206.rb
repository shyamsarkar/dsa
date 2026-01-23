#206. Reverse Linked List

=begin
Given the head of a singly linked list, reverse the list, and return the reversed list.

Example 1:
Input: head = [1,2,3,4,5]
Output: [5,4,3,2,1]
Example 2:

Input: head = [1,2]
Output: [2,1]
Example 3:

Input: head = []
Output: []

Constraints:

The number of nodes in the list is the range [0, 5000].
-5000 <= Node.val <= 5000
 

Follow up: A linked list can be reversed either iteratively or recursively. Could you implement both?

 
Seen this question in a real interview before?
1/5

=end

# 1. ✅ Iterative solution (BEST for interviews)
# 2. 🔁 Recursive solution (also acceptable)

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, next_node = nil)
    @val = val
    @next = next_node
  end
end

# 🔁 2. Recursive Solution (Good but less preferred)

def reverse_list(head)
  return head if head.nil? || head.next.nil?

  new_head = reverse_list(head.next)
  head.next.next = head
  head.next = nil

  new_head
end
