require 'utils'
require 'player'

map = {}

function map.load()
    map.x = l.gs.getWidth()/2
    map.y = l.gs.getHeight()/2

    player.load()
end

function map.update(dt)
    player.update(dt)
end

function map.draw()
    player.draw()
    l.gs.line(l.w.getWidth()/2-5,l.w.getHeight()/2, l.w.getWidth()/2+5,l.w.getHeight()/2)
    l.gs.line(l.w.getWidth()/2,l.w.getHeight()/2-5, l.w.getWidth()/2,l.w.getHeight()/2+5)
end

function map.line(x1,y1,x2,y2)
    l.gs.line(x1+map.x,y1+map.y,x2+map.x,y2+map.y)
end

function map.print(text, x, y)
    l.gs.print(text, x+map.x, y+map.y)
end

function map.click(x, y)
    player.goto(x-map.x, y-map.y)
end

