
# ✅ 1. Iterative Solution (Recommended)

def reverse_list(head)
  prev = nil
  curr = head

  while curr
    next_node = curr.next  # save next
    curr.next = prev       # reverse link
    prev = curr            # move prev
    curr = next_node       # move curr
  end

  prev
end
