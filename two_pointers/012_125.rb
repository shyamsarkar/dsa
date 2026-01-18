#125. Valid Palindrome

=begin
A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string s, return true if it is a palindrome, or false otherwise.

 

Example 1:

Input: s = "A man, a plan, a canal: Panama"
Output: true
Explanation: "amanaplanacanalpanama" is a palindrome.
Example 2:

Input: s = "race a car"
Output: false
Explanation: "raceacar" is not a palindrome.
Example 3:

Input: s = " "
Output: true
Explanation: s is an empty string "" after removing non-alphanumeric characters.
Since an empty string reads the same forward and backward, it is a palindrome.
 

Constraints:

1 <= s.length <= 2 * 105
s consists only of printable ASCII characters.
 
Seen this question in a real interview before?
1/5
=end

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    left = 0
    right = s.size - 1

    while left < right
        left += 1 while left < right && !alphanum?(s[left])
        right -= 1 while left < right && !alphanum?(s[right])
        return false if s[left].downcase != s[right].downcase

        left += 1
        right -= 1
    end

    true
end

def alphanum?(chr)
    (chr >= 'a' && chr <= 'z') || (chr >= 'A' && chr <= 'Z') || (chr >= '0' && chr <= '9')
end