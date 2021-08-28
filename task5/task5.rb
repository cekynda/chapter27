file = File.new(ARGV.first, 'r')
size = File.size(file).to_f
file_size_in_kb = size.to_f / 1024
file_size_in_mb = file_size_in_kb.to_f / 1024
if size <= 1024
  puts "#{size.round(2)}B"
elsif size.between?(1024,1000000)
  puts "#{file_size_in_kb.round(2)}KB"
elsif size.between?(1000000, 1e+9)
  puts "#{file_size_in_mb.round(2)}MB"
end