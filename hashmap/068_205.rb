# 205. Isomorphic Strings

=begin
Given two strings s and t, determine if they are isomorphic.

Two strings s and t are isomorphic if the characters in s can be replaced to get t.

All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character, but a character may map to itself.

Example 1:

Input: s = "egg", t = "add"

Output: true

Explanation:

The strings s and t can be made identical by:

Mapping 'e' to 'a'.
Mapping 'g' to 'd'.
Example 2:

Input: s = "f11", t = "b23"

Output: false

Explanation:

The strings s and t can not be made identical as '1' needs to be mapped to both '2' and '3'.

Example 3:

Input: s = "paper", t = "title"

Output: true

Constraints:

1 <= s.length <= 5 * 104
t.length == s.length
s and t consist of any valid ascii character.
 
Seen this question in a real interview before?
1/6
=end

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  return false unless s.size == t.size

  s_to_t = {}
  t_to_s = {}

  index = 0
  while index < s.size
    source = s[index]
    target = t[index]

    return false if s_to_t.key?(source) && s_to_t[source] != target

    return false if t_to_s.key?(target) && t_to_s[target] != source

    s_to_t[source] = target
    t_to_s[target] = source
    index += 1
  end

  true
end