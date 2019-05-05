require 'ruby2d'
require_relative 'face'
require_relative 'hand'
require_relative 'tick'

def set_seconds(tid)
end

set(background: 'white', title: "Det analoge ur")

face = Face.new(x: 320,y: 240, radius: 200)
seconds_hand = Hand.new(x: 320, y: 240, length: 180, color: 'red', width: 2, z: 5)
minutes_hand = Hand.new(x: 320, y: 240, length: 170, color: 'green', width: 4, z: 4)
hours_hand = Hand.new(x: 320, y: 240, length: 140, color: 'black', width: 7, z: 3)

face.draw
seconds_hand.draw
minutes_hand.draw

60.downto(0).each do |minutes|
  tick = Tick.new(x: 320, y: 240, length: 10, radius: 188, angle: 6*minutes)
  tick.draw
end

12.downto(0).each do |hours|
  tick = Tick.new(x: 320, y: 240, length: 20, radius: 188, angle: 30*hours)
  tick.draw
end

update do
  tid = Time.now
  minuter = tid.min
  minutes_hand.angle = 6 * minuter
  sekunder = tid.sec
  seconds_hand.angle = 6 * sekunder
  timer = tid.hour
  hours_hand.angle = 30 * timer
end

show
