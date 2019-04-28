require 'ruby2d'
require_relative 'face'


set(background: 'white', title: "Det analoge ur")

face = Face.new(x: 320,y: 240, radius: 200)

face.draw

show
