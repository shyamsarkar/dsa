# ==========================================================
# REGULAR EXPRESSIONS IN RUBY – COMPLETE BEGINNER GUIDE
# ==========================================================
# A Regular Expression (Regex) is a pattern used to:
#   - search text
#   - match text
#   - extract data
#   - replace data
# ==========================================================

# ==========================================================
# CORE BUILDING BLOCKS
# ==========================================================


# In Ruby, regex is written between / /

puts "========== REGEX CORE CONCEPTS =========="


# ----------------------------------------------------------
# 1. TOKENS
# ----------------------------------------------------------
# Tokens are the smallest units in a regex pattern.
# Examples: literal characters, meta characters, groups

# Literal token example
puts "ruby" =~ /ruby/   # matches exact word


# ----------------------------------------------------------
# 2. META CHARACTERS
# ----------------------------------------------------------
# Meta characters have special meaning in regex

# .  ^  $  *  +  ?  { }  [ ]  ( )  |  \

puts "cat" =~ /c.t/     # . matches any single character


# ----------------------------------------------------------
# 3. META SEQUENCES (ESCAPE SEQUENCES)
# ----------------------------------------------------------
# Predefined character shortcuts

# \d => digit (0-9)
# \D => non-digit
# \w => word character (a-z, A-Z, 0-9, _)
# \W => non-word character
# \s => whitespace
# \S => non-whitespace
# \b => word boundary

puts "abc123" =~ /\d/   # => 3
puts "hello world" =~ /\s/  # => 5


# ----------------------------------------------------------
# 4. CHARACTER CLASSES [ ]
# ----------------------------------------------------------
# Match ONE character from the given set

# [aeiou] => any vowel
# [a-z]   => lowercase letters
# [A-Z]   => uppercase letters
# [0-9]   => digits
# [^0-9]  => NOT a digit

puts "ruby" =~ /[aeiou]/   # => 1
puts "ABC" =~ /[a-z]/      # => nil


# ----------------------------------------------------------
# 5. QUANTIFIERS
# ----------------------------------------------------------
# Define HOW MANY TIMES a token should appear

# *     => 0 or more
# +     => 1 or more
# ?     => 0 or 1
# {n}   => exactly n
# {n,}  => at least n
# {n,m} => between n and m

puts "aaa" =~ /a*/     # matches
puts "aaa" =~ /a+/     # matches
puts "color" =~ /colou?r/  # matches both color/colour


# ----------------------------------------------------------
# 6. ANCHORS
# ----------------------------------------------------------
# Anchors match POSITION, not characters

# ^ => start of string
# $ => end of string
# \A => absolute start (Ruby)
# \z => absolute end (Ruby)

puts "ruby" =~ /^ruby$/    # exact match
puts "ruby\n" =~ /\Aruby\z/  # strict match


# ----------------------------------------------------------
# 7. GROUP CONSTRUCTS ( )
# ----------------------------------------------------------
# Used for:
# - capturing values
# - applying quantifiers to groups
# - backreferences

# Capturing group
match = "2025-12-28".match(/(\d{4})-(\d{2})-(\d{2})/)
puts match[1]  # year

# Non-capturing group
puts "color" =~ /colou(?:r)?/


# ----------------------------------------------------------
# 8. FLAGS / MODIFIERS
# ----------------------------------------------------------
# Flags modify how regex behaves

# i => case-insensitive
# m => multiline
# x => extended (ignore spaces & comments)

puts "Ruby" =~ /ruby/i   # matches due to i flag


# ----------------------------------------------------------
# 9. SUBSTITUTION (REPLACEMENT)
# ----------------------------------------------------------
# Used with sub and gsub

puts "hello123".sub(/\d/, "")     # removes first digit
puts "hello123".gsub(/\d/, "")    # removes all digits


# ----------------------------------------------------------
# 10. BACKREFERENCES
# ----------------------------------------------------------
# Refer to a previously captured group

puts "the the" =~ /(\w+)\s\1/   # matches repeated words


# ----------------------------------------------------------
# 11. LOOKAHEADS & LOOKBEHINDS (ADVANCED)
# ----------------------------------------------------------
# (?=...)  => positive lookahead
# (?!...)  => negative lookahead
# (?<=...) => positive lookbehind
# (?<!...) => negative lookbehind

puts "abc123" =~ /(?=\D*\d)\w+/  # contains at least one digit


puts "========== END OF CORE CONCEPTS =========="




# ==========================================================
# REGULAR EXPRESSIONS – PRACTICAL EXAMPLES (RUBY)
# ==========================================================







puts "========== 1. BASIC MATCHING =========="

text = "I love ruby"

# =~ returns index of match or nil
puts text =~ /ruby/        # => 7
puts text =~ /python/      # => nil

# match returns MatchData object
match = text.match(/ruby/)
puts match                # => ruby


puts "\n========== 2. CHARACTER MATCHING =========="

# .  => any single character
puts "cat" =~ /c.t/        # => 0

# \d => digit
puts "abc123" =~ /\d/     # => 3

# \D => non-digit
puts "123a" =~ /\D/       # => 3

# \w => word character (a-z, A-Z, 0-9, _)
puts "hello_" =~ /\w/     # => 0

# \s => whitespace
puts "hello world" =~ /\s/  # => 5


puts "\n========== 3. CHARACTER CLASSES [ ] =========="

# Match any vowel
puts "ruby" =~ /[aeiou]/   # => 1

# Match lowercase letters
puts "ABCdef" =~ /[a-z]/   # => 3

# Match digits
puts "age 25" =~ /[0-9]/   # => 4

# Negation: match anything except digits
puts "abc123" =~ /[^0-9]/  # => 0


puts "\n========== 4. QUANTIFIERS =========="

# * => 0 or more
puts "aaa" =~ /a*/         # => 0

# + => 1 or more
puts "aaa" =~ /a+/         # => 0

# ? => 0 or 1
puts "color" =~ /colou?r/  # => 0

# {n} => exactly n times
puts "12345" =~ /\d{5}/    # => 0

# {n,} => at least n times
puts "123456" =~ /\d{5,}/  # => 0

# {n,m} => between n and m
puts "1234" =~ /\d{2,4}/   # => 0


puts "\n========== 5. ANCHORS =========="

# ^ => start of string
# $ => end of string

puts "ruby" =~ /^ruby$/           # => 0
puts "ruby language" =~ /^ruby$/  # => nil


puts "\n========== 6. GROUPS & CAPTURING =========="

data = "Order ID: 98765"

match = data.match(/(\d+)/)

puts match[0]   # => 98765 (full match)
puts match[1]   # => 98765 (captured group)

# Multiple groups
date = "2025-12-28"
m = date.match(/(\d{4})-(\d{2})-(\d{2})/)

puts "Year: #{m[1]}"
puts "Month: #{m[2]}"
puts "Day: #{m[3]}"


puts "\n========== 7. OR OPERATOR | =========="

puts "I love ruby" =~ /ruby|python/     # => 7
puts "I love java" =~ /ruby|python/     # => nil


puts "\n========== 8. SCAN (FIND ALL MATCHES) =========="

numbers = "Price 100 and tax 20"
result = numbers.scan(/\d+/)

puts result.inspect   # => ["100", "20"]


puts "\n========== 9. SUB & GSUB =========="

# sub => replace first occurrence
puts "123-456-789".sub("-", ":")
# => "123:456-789"

# gsub => replace all occurrences
puts "hello123".gsub(/\d/, "")
# => "hello"


puts "\n========== 10. REAL WORLD EXAMPLES =========="

# Email validation
email = "test@gmail.com"
puts email =~ /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
# => 0 (valid)

# Indian mobile number
mobile = "9876543210"
puts mobile =~ /\A[6-9]\d{9}\z/
# => 0 (valid)

# Password:
# - minimum 8 characters
# - at least one letter
# - at least one digit
password = "abc12345"
puts password =~ /(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}/
# => 0 (valid)


puts "\n========== 11. CLEANING TEXT =========="

text = "this   has   too    many spaces"
puts text.gsub(/\s+/, " ")
# => "this has too many spaces"


puts "\n========== 12. RAILS VALIDATION EXAMPLE =========="

puts <<~RAILS
  validates :email, format: {
    with: /\\A[\\w+\\-.]+@[a-z\\d\\-.]+\\.[a-z]+\\z/i
  }
RAILS

puts "\n========== 13. GREEDY VS LAZY =========="

# Symbol    Name    Behavior
# * or +    Greedy    Matches the longest possible string.
# *? or +?  Lazy      Matches the shortest possible string.


puts "\n========== END OF REGEX TUTORIAL =========="










puts "\n============= Advanced Questions ========================="

puts "\n========== 13. NAMED CAPTURE GROUPS =========="
# Named capture groups allow accessing matched values by name
# Syntax: (?<name>pattern)

text = "Date: 2023-04-15 - User: JohnDoe"
pattern = /Date: (?<year>\d{4})-(?<month>\d{2})-(?<day>\d{2})/
match = text.match(pattern)

puts "Year: #{match[:year]}"
puts "Month: #{match[:month]}"
puts "Day: #{match[:day]}"


puts "\n========== 14. COMPLEX STRUCTURED DATA =========="

text1 = "Order: ID=12345, Product=Laptop, Quantity=2"
pattern1 = /Order: ID=(?<order_id>\d+), Product=(?<product>\w+), Quantity=(?<quantity>\d+)/
match1 = text1.match(pattern1)

puts match1[:order_id]
puts match1[:product]
puts match1[:quantity]


puts "\n========== 15. USER DETAILS PARSING =========="

text2 = "User: name=Alice, email=alice@example.com, age=30"
pattern2 = /User: name=(?<user_name>\w+), email=(?<user_email>[\w.@]+), age=(?<user_age>\d+)/
match2 = text2.match(pattern2)

puts match2[:user_name]
puts match2[:user_email]
puts match2[:user_age]


puts "\n========== 16. LOG PARSING =========="

text3 = "Log: Time=12:30:45, Level=ERROR, Message='File not found'"
pattern3 = /Log: Time=(?<log_time>\d{2}:\d{2}:\d{2}), Level=(?<log_level>\w+), Message='(?<log_message>.*)'/
match3 = text3.match(pattern3)

puts match3[:log_time]
puts match3[:log_level]
puts match3[:log_message]


puts "\n========== 17. FLOAT & NEGATIVE NUMBER PARSING =========="

text4 = "Coordinates: x=10.5, y=20.2, z=-5.8"
pattern4 = /Coordinates: x=(?<x_coord>-?\d+\.?\d*), y=(?<y_coord>-?\d+\.?\d*), z=(?<z_coord>-?\d+\.?\d*)/
match4 = text4.match(pattern4)

puts match4[:x_coord]
puts match4[:y_coord]
puts match4[:z_coord]


puts "\n========== 18. SIMPLE NAME EXTRACTION =========="

text = "Hello, my name is John Doe"
pattern = /(?<firstname>\w+) (?<lastname>\w+)/
match = text.match(pattern)

puts match[:firstname]
puts match[:lastname]


puts "\n========== 19. KEY-VALUE EXTRACTION USING SCAN =========="

data_string = 'name="John Doe";age=30;city="New York";price=12.99;id=123'
pattern = /(?<key>\w+)=(?<value>(?:"[^"]*"|\d+(?:\.\d+)?))/

result = data_string.scan(pattern)
puts result.inspect
# => [["name", "\"John Doe\""], ["age", "30"], ["city", "\"New York\""], ["price", "12.99"], ["id", "123"]]


puts "\n========== 20. BACKREFERENCES (REPEATED WORDS) =========="
# \1 refers to the first captured group

text = "the the cat cat dog bird bird"
duplicates = text.scan(/(\w+)\s\1/)
puts duplicates.inspect
# => [["the"], ["cat"], ["bird"]]


puts "\n========== 21. TRIPLE WORD DETECTION =========="

text = "one one one two two two three three three four five six"
triplets = text.scan(/(\w+)\s\1\s\1/)
puts triplets.inspect
# => [["one"], ["two"], ["three"]]



# ==========================================================
# REGEX INTERVIEW PRACTICE – INPUT | RESULT | RUBY USAGE
# ==========================================================
# Run with:
# ruby regex_interview_practice.rb
# ==========================================================


puts "\n========== SECTION 1: INPUT | RESULT | RUBY USAGE =========="

# Q1
input = "abc123"
result = "abc"
ruby_usage = input.match(/[a-z]+/)&.to_s
puts ruby_usage

# Q2
input = "abc123"
result = "abc123"
ruby_usage = input.match(/\w+/)&.to_s
puts ruby_usage

# Q3
input = "123abc"
result = nil
ruby_usage = input.match(/^[a-z]+/i)&.to_s
puts ruby_usage.inspect

# Q4
input = "hello_world-123"
result = "hello_world"
ruby_usage = input.match(/\w+/)&.to_s
puts ruby_usage

# Q5
input = "user@example.com"
result = true
ruby_usage = !!(input =~ /\A[\w.+-]+@[a-z\d.-]+\.[a-z]{2,}\z/i)
puts ruby_usage

# Q6
input = "98-76-54-3210"
result = "9876543210"
ruby_usage = input.gsub(/-/, "")
puts ruby_usage

# Q7
input = "2025-12-28"
result = ["2025", "12", "28"]
ruby_usage = input.match(/(\d{4})-(\d{2})-(\d{2})/)&.captures
puts ruby_usage.inspect

# Q8
input = "the the cat cat dog"
result = ["the", "cat"]
ruby_usage = input.scan(/(\w+)\s\1/).flatten
puts ruby_usage.inspect

# Q9
input = "one one one two two two three"
result = ["one", "two"]
ruby_usage = input.scan(/(\w+)\s\1\s\1/).flatten
puts ruby_usage.inspect

# Q10
input = "price:$100 $250 $30"
result = ["100", "250", "30"]
ruby_usage = input.scan(/(?<=\$)\d+/)
puts ruby_usage.inspect


puts "\n========== SECTION 2: REGEX DEBUGGING (INPUT | RESULT | RUBY USAGE) =========="

# D1
input = "abc"
result = "abc"
ruby_usage = input.match(/[a-z]+/)&.to_s
puts ruby_usage

# D2
input = "abc123"
result = nil
ruby_usage = input.match(/^[a-z]+$/i)&.to_s
puts ruby_usage.inspect

# D3
input = "ruby\nruby"
result = "ruby"
ruby_usage = input.match(/^ruby$/)&.to_s
puts ruby_usage.inspect

# D4
input = ""
result = ""
ruby_usage = input.match(/\d*/)&.to_s
puts ruby_usage.inspect

# D5
input = "1234567890"
result = true
ruby_usage = !!(input =~ /^\d{10}$/)
puts ruby_usage

# D6
input = "the the"
result = "the"
ruby_usage = input.match(/(\w+)\s\1/)&.captures
puts ruby_usage.inspect

# D7
input = "<div>one</div><div>two</div>"
result = "<div>one</div>"
ruby_usage = input.scan(/<div>.*?<\/div>/)
puts ruby_usage.inspect

# D8
input = "hello-world"
result = "hello"
ruby_usage = input.match(/\w+/)&.to_s
puts ruby_usage

# D9
input = "abc_123"
result = "abc_123"
ruby_usage = input.match(/\w+/)&.to_s
puts ruby_usage

# D10
input = "Abc12"
result = true
ruby_usage = !!(input =~ /^[a-z0-9_]{5,}$/i)
puts ruby_usage


puts "\n========== SECTION 3: RAILS VALIDATION (INPUT | RESULT | RUBY USAGE) =========="

# R1
input = "test@gmail.com"
result = true
ruby_usage = !!(input =~ /\A[\w.+-]+@[a-z\d.-]+\.[a-z]{2,}\z/i)
puts ruby_usage

# R2
input = "user_12"
result = true
ruby_usage = !!(input =~ /\A[a-z0-9_]{5,}\z/i)
puts ruby_usage

# R3
input = "9876543210"
result = true
ruby_usage = !!(input =~ /\A[6-9]\d{9}\z/)
puts ruby_usage

# R4
input = "abc12345"
result = true
ruby_usage = !!(input =~ /(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}/)
puts ruby_usage


puts "\n========== SECTION 4: REGEX → LEETCODE STYLE =========="

# LC1
input = "the sky is blue"
result = "blue is sky the"
ruby_usage = input.scan(/\w+/).reverse.join(" ")
puts ruby_usage

# LC2
input = "A man, a plan, a canal: Panama"
result = "amanaplanacanalpanama"
ruby_usage = input.gsub(/[^a-z0-9]/i, "").downcase
puts ruby_usage

# LC3
input = "find the longest word here"
result = "longest"
ruby_usage = input.scan(/\w+/).max_by(&:length)
puts ruby_usage

# LC4
input = "cat cat dog dog bird"
result = ["cat", "dog"]
ruby_usage = input.scan(/(\w+)\s\1/).flatten
puts ruby_usage.inspect

# LC5
input = "temp is -10 and 25 degrees"
result = ["-10", "25"]
ruby_usage = input.scan(/-?\d+/)
puts ruby_usage.inspect

# LC6
input = "values: 10.5 -2.3 4"
result = ["10.5", "-2.3"]
ruby_usage = input.scan(/-?\d+\.\d+/)
puts ruby_usage.inspect


puts "\n========== END OF FILE =========="