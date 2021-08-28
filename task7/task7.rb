require 'exifr/jpeg'

date = EXIFR::JPEG.new('photo.jpg')
puts date 