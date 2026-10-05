# Flatten Dot-Notation Keys to Nested Hash

=begin
Given a hash with dot-notation keys, convert it into a nested hash.

Input:
{
  "employee.name" => "Ravi",
  "employee.email" => "ravi@example.com",
  "employee.address.city" => "Bangalore",
  "employee.address.zip" => 560001,
  "company.name" => "TechCorp",
  "company.id" => "C1234"
}

Output:
{
  "employee" => {
    "name" => "Ravi",
    "email" => "ravi@example.com",
    "address" => {
      "city" => "Bangalore",
      "zip" => 560001
    }
  },
  "company" => {
    "name" => "TechCorp",
    "id" => "C1234"
  }
}
=end

def flatten_dot_notation(hash)
  result = {}

  hash.each do |key, value|
    parts = key.split(".")
    nested_hash = result

    parts.each_with_index do |part, index|
      if index == parts.length - 1
        nested_hash[part] = value
      else
        nested_hash[part] ||= {}
        nested_hash = nested_hash[part]
      end
    end
  end

  result
end
