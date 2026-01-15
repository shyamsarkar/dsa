# 3. Longest Substring Without Repeating Characters

=begin
Given a string s, find the length of the longest substring without duplicate characters.

Example 1:

Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3. Note that "bca" and "cab" are also correct answers.
Example 2:

Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
Example 3:

Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
 

Constraints:

0 <= s.length <= 5 * 104
s consists of English letters, digits, symbols and spaces.
=end

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    start = 0
    max_length = 0
    last_seen = {}

    s.each_char.with_index do |chr, index|
        if last_seen.key?(chr) && last_seen[chr] >= start
            start = last_seen[chr] + 1
        end

        last_seen[chr] = index
        max_length = [max_length, index - start + 1].max
    end

    max_length
end
