require 'math'


------------------------------------------------------ ALIAS

l = love
--l.audio
--l.event
l.fs = l.filesystem
--l.font
l.gs = l.graphics
l.img = l.image
l.js = l.joystick
l.kb = l.keyboard
--l.math
l.m = l.mouse
--l.physics
--l.sound
l.sys = l.system
--l.thread
l.t = l.timer
l.w = l.window


------------------------------------------------------ MATH

math.trig = {}
function math.dist(x1, y1, x2, y2)
    return math.sqrt(math.pow(x2-x1, 2)+math.pow(y2-y1, 2))
end


