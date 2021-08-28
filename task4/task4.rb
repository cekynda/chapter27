longest = nil
shortest = nil
file = File.open('../file.txt', 'r') do |f|
 longest = File.readlines(f).map(&:chomp).max_by(&:length)
 shortest = File.readlines(f).map(&:chomp).min_by(&:length)
end
p longest.split(' ').join.size
p shortest.split(' ').join.size