#383. Ransom Note

=begin
Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.

Each letter in magazine can only be used once in ransomNote.

 

Example 1:

Input: ransomNote = "a", magazine = "b"
Output: false
Example 2:

Input: ransomNote = "aa", magazine = "ab"
Output: false
Example 3:

Input: ransomNote = "aa", magazine = "aab"
Output: true
 

Constraints:

1 <= ransomNote.length, magazine.length <= 105
ransomNote and magazine consist of lowercase English letters.
 
Seen this question in a real interview before?
1/5
=end

# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    counts = Hash.new(0)

    magazine.each_char { |chr| counts[chr] += 1 }
    ransom_note.each_char do |chr|
        return false if counts[chr] == 0
        counts[chr] -= 1
    end

    true
end