# 345. Reverse Vowels of a String

=begin
Given a string s, reverse only all the vowels in the string and return it.

The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.

Example 1:

Input: s = "IceCreAm"
Output: "AceCreIm"

Explanation:

The vowels in s are ['I', 'e', 'e', 'A']. On reversing the vowels, s becomes "AceCreIm".

Example 2:

Input: s = "leetcode"
Output: "leotcede"

Constraints:

1 <= s.length <= 3 * 105
s consist of printable ASCII characters.
 
Seen this question in a real interview before?
1/5
=end

# @param {String} s
# @return {String}
def reverse_vowels(s)
  vowels = Set.new(%w[a e i o u A E I O U])
  left, right = 0, s.size - 1

  while left < right
    left  += 1 until left  >= right || vowels.include?(s[left])
    right -= 1 until left  >= right || vowels.include?(s[right])

    break if left >= right

    s[left], s[right] = s[right], s[left]
    left  += 1
    right -= 1
  end

  s
end
