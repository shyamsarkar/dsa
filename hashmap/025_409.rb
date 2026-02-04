# 409. Longest Palindrome

=begin
Given a string s which consists of lowercase or uppercase letters, return the length of the longest palindrome that can be built with those letters.

Letters are case sensitive, for example, "Aa" is not considered a palindrome.

 

Example 1:

Input: s = "abccccdd"
Output: 7
Explanation: One longest palindrome that can be built is "dccaccd", whose length is 7.
Example 2:

Input: s = "a"
Output: 1
Explanation: The longest palindrome that can be built is "a", whose length is 1.
 

Constraints:

1 <= s.length <= 2000
s consists of lowercase and/or uppercase English letters only.
=end

# @param {String} s
# @return {Integer}
def longest_palindrome(s)
    counts = Hash.new(0) 

    s.each_char { |chr| counts[chr] += 1 }
    length = 0
    has_odd = false

    counts.each_value do |count|
        length += (count/2) * 2
        has_odd = true if count.odd?
    end

    length += 1 if has_odd

    length
end