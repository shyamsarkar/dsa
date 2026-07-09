# 14. Longest Common Prefix

=begin
Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".

Example 1:

Input: strs = ["flower","flow","flight"]
Output: "fl"
Example 2:

Input: strs = ["dog","racecar","car"]
Output: ""
Explanation: There is no common prefix among the input strings.

Constraints:

1 <= strs.length <= 200
0 <= strs[i].length <= 200
strs[i] consists of only lowercase English letters if it is non-empty.
 
Seen this question in a real interview before?
1/6
=end

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return "" if strs.empty?

  prefix = strs[0]

  strs[1..].each do |word|
    until word.start_with?(prefix)
      prefix = prefix[0...-1]
      return "" if prefix.empty?
    end
  end

  prefix
end
