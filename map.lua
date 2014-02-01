require 'utils'
require 'player'

map = {}
cam = {}
function map.load()
    cam.x = -l.gs.getWidth()/2
    cam.y = -l.gs.getHeight()/2

    player.load()
end

function map.update(dt)
    player.update(dt)
end

function map.draw()
    pcall(l.gs.push)
    l.gs.translate(-cam.x, -cam.y)
    player.draw()
    l.gs.line(-5, 0, 5,0)
    l.gs.line(0, -5, 0, 5)
    l.gs.pop()
end

function map.click(x, y)
    player.goto(x+cam.x, y+cam.y)
end

