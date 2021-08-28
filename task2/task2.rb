file = File.open('../file.txt') do |file|
  file.readlines.shuffle.map do |e|
    e.chomp
  end
end
puts file