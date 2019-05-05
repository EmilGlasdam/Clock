require 'ruby2d'
require_relative 'face'
require_relative 'hand'

def set_seconds(tid)
end

set(background: 'white', title: "Det analoge ur")

face = Face.new(x: 320,y: 240, radius: 200)
seconds_hand = Hand.new(x: 320, y: 240, length: 180, color: 'red', width: 2)
minutes_hand = Hand.new(x: 320, y: 240, length: 180, color: 'green', width: 4)

face.draw
seconds_hand.draw
minutes_hand.draw

update do
  tid = Time.now
  minuter = tid.min
  minutes_hand.angle = 6 * minuter
  sekunder = tid.sec
  seconds_hand.angle = 6 * sekunder
end

show
