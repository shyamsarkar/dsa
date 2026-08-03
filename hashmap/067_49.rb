# 49. Group Anagrams

=begin
Given an array of strings strs, group the anagrams together. You can return the answer in any order.

Example 1:

Input: strs = ["eat","tea","tan","ate","nat","bat"]

Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

Explanation:

There is no string in strs that can be rearranged to form "bat".
The strings "nat" and "tan" are anagrams as they can be rearranged to form each other.
The strings "ate", "eat", and "tea" are anagrams as they can be rearranged to form each other.

Example 2:
Input: strs = [""]
Output: [[""]]

Example 3:
Input: strs = ["a"]
Output: [["a"]]

Constraints:

1 <= strs.length <= 104
0 <= strs[i].length <= 100
strs[i] consists of lowercase English letters.
 
Seen this question in a real interview before?
1/6
=end

# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  result = Hash.new { |h, k| h[k] = [] }

  strs.each do |str|
    count = Array.new(26, 0)

    str.each_byte do |byte|
        count[byte - "a".ord] += 1
    end

    result[count] << str
  end

  result.values
end
