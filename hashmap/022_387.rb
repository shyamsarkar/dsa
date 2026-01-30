# 387. First Unique Character in a String

=begin
Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.

 

Example 1:

Input: s = "leetcode"

Output: 0

Explanation:

The character 'l' at index 0 is the first character that does not occur at any other index.

Example 2:

Input: s = "loveleetcode"

Output: 2

Example 3:

Input: s = "aabb"

Output: -1

 

Constraints:

1 <= s.length <= 105
s consists of only lowercase English letters.
 
Seen this question in a real interview before?
1/5
=end

# @param {String} s
# @return {Integer}
def first_uniq_char(s)
    counts = Hash.new(0)

    s.each_char { |chr| counts[chr] += 1 }
    s.chars.each_with_index do |chr, index|
        return index if counts[chr] == 1
    end

    -1
end