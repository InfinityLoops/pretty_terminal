require 'catpix'

# This resizes the image to fit your current terminal size
# see http://radek.io/2015/06/29/catpix/ for explaination

Catpix::print_image 'mario.jpeg',
  :limit_x => 1.0,
  :limit_y => 0,
  :center_x => true,
  :center_y => true,
  :bg => "white",
  :bg_fill => true

Catpix::print_image 'mario_sprite.png',
  :limit_x => 1.0,
  :limit_y => 0,
  :center_x => true,
  :center_y => true,
  :bg => "black",
  :bg_fill => true