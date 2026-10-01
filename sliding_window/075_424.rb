# 424. Longest Repeating Character Replacement

=begin
Medium

You are given a string s and an integer k. You can choose any character of the string and change it to any other uppercase English character. You can perform this operation at most k times.

Return the length of the longest substring containing the same letter you can get after performing the above operations.

Example 1:

Input: s = "ABAB", k = 2
Output: 4
Explanation: Replace the two 'A's with two 'B's or vice versa.
Example 2:

Input: s = "AABABBA", k = 1
Output: 4
Explanation: Replace the one 'A' in the middle with 'B' and form "AABBBBA".
The substring "BBBB" has the longest repeating letters, which is 4.
There may exists other ways to achieve this answer too.

Constraints:

1 <= s.length <= 105
s consists of only uppercase English letters.
0 <= k <= s.length
 
Seen this question in a real interview before?
1/6
=end

# @param {String} s
# @param {Integer} k
# @return {Integer}
def character_replacement(s, k)
  counts = Hash.new(0)
  result = 0
  left = 0
  max_count = 0

  s.each_char.with_index do |chr, right|
    counts[chr] += 1
    max_count = counts[chr] if counts[chr] > max_count
    substr_size = right - left + 1

    if substr_size - max_count > k
      counts[s[left]] -= 1
      left += 1
    end

    substr_size = right - left + 1
    result = substr_size if substr_size > result
  end

  result
end
