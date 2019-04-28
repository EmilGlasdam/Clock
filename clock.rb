require 'ruby2d'
require_relative 'face'
require_relative 'hand'

set(background: 'white', title: "Det analoge ur")

face = Face.new(x: 320,y: 240, radius: 200)
seconds_hand = Hand.new(x: 320, y: 240, length: 180)

face.draw
seconds_hand.draw

angle = 0

seconds_hand.angle = angle

update do
  angle += 1
  angle = angle % 360
  seconds_hand.angle = angle
end

show

