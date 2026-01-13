242. Valid Anagram

Given two strings s and t, return true if t is an anagram of s, and false otherwise.

 

Example 1:

Input: s = "anagram", t = "nagaram"

Output: true

Example 2:

Input: s = "rat", t = "car"

Output: false

 

Constraints:

1 <= s.length, t.length <= 5 * 104
s and t consist of lowercase English letters.
 

Follow up: What if the inputs contain Unicode characters? How would you adapt your solution to such a case?

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    return false unless s.length == t.length

    count = Hash.new(0)

    s.each_char { |chr| count[chr] += 1 }
    t.each_char { |chr| count[chr] -= 1 }

    count.values.all?{ |val| val==0 }
end