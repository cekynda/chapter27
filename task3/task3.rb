file = File.open(ARGV.first, 'w') do |f|
  ARGV.last.to_i.times{ f.write "1" }
end

p File.size('hui.txt')


