# 76. Minimum Window Substring

=begin
Hard

Given two strings s and t of lengths m and n respectively, return the minimum window substring of s such that every character in t (including duplicates) is included in the window. If there is no such substring, return the empty string "".

The testcases will be generated such that the answer is unique.

Example 1:

Input: s = "ADOBECODEBANC"; t = "ABC"
Output: "BANC"
Explanation: The minimum window substring "BANC" includes 'A', 'B', and 'C' from string t.
Example 2:

Input: s = "a", t = "a"
Output: "a"
Explanation: The entire string s is the minimum window.
Example 3:

Input: s = "a", t = "aa"
Output: ""
Explanation: Both 'a's from t must be included in the window.
Since the largest window of s only has one 'a', return empty string.
 

Constraints:

m == s.length
n == t.length
1 <= m, n <= 105
s and t consist of uppercase and lowercase English letters.
 

Follow up: Could you find an algorithm that runs in O(m + n) time?

 
Seen this question in a real interview before?
1/6
=end

def min_window(s, t)
  return "" if t.empty? || s.size < t.size

  need = Hash.new(0)
  t.each_char { |c| need[c] += 1 }

  missing = t.size
  left = 0
  best_start = 0
  best_len = Float::INFINITY

  s.each_char.with_index do |c, right|
    missing -= 1 if need[c] > 0
    need[c] -= 1

    while missing == 0
      window_len = right - left + 1
      if window_len < best_len
        best_len = window_len
        best_start = left
      end

      need[s[left]] += 1
      missing += 1 if need[s[left]] > 0
      left += 1
    end
  end

  best_len == Float::INFINITY ? "" : s[best_start, best_len]
end
