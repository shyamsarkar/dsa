# 2278. Percentage of Letter in String

=begin
Easy

Given a string s and a character letter, return the percentage of characters in s that equal letter rounded down to the nearest whole percent.

Example 1:

Input: s = "foobar", letter = "o"
Output: 33
Explanation:
The percentage of characters in s that equal the letter 'o' is 2 / 6 * 100% = 33% when rounded down, so we return 33.
Example 2:

Input: s = "jjjj", letter = "k"
Output: 0
Explanation:
The percentage of characters in s that equal the letter 'k' is 0%, so we return 0.

Constraints:

1 <= s.length <= 100
s consists of lowercase English letters.
letter is a lowercase English letter.
 
Seen this question in a real interview before?
1/6
=end

# @param {String} s
# @param {Character} letter
# @return {Integer}
def percentage_letter(s, letter)
  return if s.empty? || letter.empty?

  count = 0
  s.each_char { |chr| count += 1 if chr == letter }

  (count * 100 / s.size).to_int
end
