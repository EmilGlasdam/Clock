require 'ruby2d'
require_relative 'face'
require_relative 'hand'

def set_seconds(tid)
end

set(background: 'white', title: "Det analoge ur")

face = Face.new(x: 320,y: 240, radius: 200)
seconds_hand = Hand.new(x: 320, y: 240, length: 180)

face.draw
seconds_hand.draw

update do
  tid = Time.now
  sekunder = tid.sec
  seconds_hand.angle = 6 * sekunder
end

show
