require "tco"
require "rmagick"

#run the code in your terminal, then zoom out

img = Magick::Image::read('mario.jpeg').first
img.each_pixel do |pixel, col, row|
  c = [pixel.red, pixel.green, pixel.blue].map { |v| 256 * (v / 65535.0) }
  pixel.opacity == 65535 ? print("  ") : print("  ".bg c)
  puts if col >= img.columns - 1
end

# second example
img2 = Magick::Image::read('mario_sprite.png').first
img2.each_pixel do |pixel, col, row|
  c = [pixel.red, pixel.green, pixel.blue].map { |v| 256 * (v / 65535.0) }
  pixel.opacity == 65535 ? print("  ") : print("  ".bg c)
  puts if col >= img2.columns - 1
end