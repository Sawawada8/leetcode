# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

# O(max(n, m))
def add_two_numbers(l1, l2)
  dummy_head = ListNode.new(0)
  current = dummy_head
  curry = 0

  while l1 || l2 || curry != 0
    v1 = l1&.val || 0
    v2 = l2&.val || 0
    total = v1 + v2 + curry
    curry = total / 10

    current.next = ListNode.new(total % 10)
    current = current.next

    l1 = l1&.next
    l2 = l2&.next
  end
  dummy_head.next
end

# O(n + m + max(n, m))
def add_two_numbers(l1, l2)
    l1_arr = recarsion(l1)
    l2_arr = recarsion(l2)

    res = l1_arr.reverse.join.to_i + l2_arr.reverse.join.to_i
    res.to_s.split('').reverse.map(&:to_i)
end

def recarsion(list, vals = [])
    vals << list.val
    n = list.next
    if n.nil?
        return vals
    end
    recarsion(n, vals)
end
