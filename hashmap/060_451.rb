# 451. Sort Characters By Frequency

=begin
Given a string s, sort it in decreasing order based on the frequency of the characters. The frequency of a character is the number of times it appears in the string.

Return the sorted string. If there are multiple answers, return any of them.

Example 1:

Input: s = "tree"
Output: "eert"
Explanation: 'e' appears twice while 'r' and 't' both appear once.
So 'e' must appear before both 'r' and 't'. Therefore "eetr" is also a valid answer.
Example 2:

Input: s = "cccaaa"
Output: "aaaccc"
Explanation: Both 'c' and 'a' appear three times, so both "cccaaa" and "aaaccc" are valid answers.
Note that "cacaca" is incorrect, as the same characters must be together.
Example 3:

Input: s = "Aabb"
Output: "bbAa"
Explanation: "bbaA" is also a valid answer, but "Aabb" is incorrect.
Note that 'A' and 'a' are treated as two different characters.

Constraints:

1 <= s.length <= 5 * 105
s consists of uppercase and lowercase English letters and digits.
 
Seen this question in a real interview before?
1/6
=end

# @param {String} s
# @return {String}
def frequency_sort(s)
  counts = Hash.new(0)
  result = ""

  s.each_char { |chr| counts[chr] += 1 }

  bucket = Array.new(s.size + 1) { [] }
  
  counts.each do |chr, count|
    bucket[count] << chr
  end

  s.size.downto(1).each do |count|
    bucket[count].each do |chr|
      result << chr * count
    end
  end

  result
end
