# lines = []
# file = File.open(ARGV.first) do |file|
#   file.each do |line|
#     lines << line.chomp
#   end
# end

# p lines.sample

lines = File.readlines(ARGV.first)
p lines.sample.chomp