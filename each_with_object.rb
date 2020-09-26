=begin
This method iterates over each key-value pair and
creates a new hash with the object passed into #each_with_object.
So, the block variable newHash gets assigned to an empty hash,
which is then built up according to set rules.
=end

def transform_hash()
  hash = { a: 1, b: 2 }
  puts "hash = #{hash}"
  hash.each_with_object({}) do |(key, value), newHash|
   newHash[key] = value + 1
   puts "newHash = #{newHash}"
  end
end

transform_hash()                # => { a => 2, b => 3 }
