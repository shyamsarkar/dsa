# 567. Permutation in String

=begin
Medium

Given two strings s1 and s2, return true if s2 contains a permutation of s1, or false otherwise.

In other words, return true if one of s1's permutations is the substring of s2.

Example 1:

Input: s1 = "ab", s2 = "eidbaooo"
Output: true
Explanation: s2 contains one permutation of s1 ("ba").
Example 2:

Input: s1 = "ab", s2 = "eidboaoo"
Output: false

Constraints:

1 <= s1.length, s2.length <= 104
s1 and s2 consist of lowercase English letters.
 
Seen this question in a real interview before?
1/6
=end

# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_inclusion(s1, s2)
  n = s1.size
  m = s2.size
  return false if m < n

  counts = Array.new(26, 0)
  base = "a".ord
  n.times do |index|
    counts[s1[index].ord - base] += 1
    counts[s2[index].ord - base] -= 1
  end

  return true if counts.all?(&:zero?)

  (n...m).each do |index|
    counts[s2[index - n].ord - base] += 1   # element eleminated
    counts[s2[index].ord - base] -= 1       # element added

    return true if counts.all?(&:zero?)
  end

  false
end
