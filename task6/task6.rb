def detach(f_in, detach_size)
  raise 'Невозможно разбить файл' if File.size(f_in) < 10

  File.open(f_in,"r") do |f_in|
    i = 1
    until f_in.eof?
      if i == 11
        break
      end
      File.open("../file_x#{i}.txt","w") do |f_out|
        f_out << f_in.read(detach_size)
      end
      i += 1
    end
  end
end
file = File.new('../file.txt')
size = File.size(file) / 10
detach(file, size)