require 'stathat'
require 'map'


------------------------------------------------------ SETUP

function love.load()
    stathat.count("ygWeRqRIFdcG6yqILljU4CBXN0t6", "ODg1IGj-82GuiBjozJcgcJH4iEw~", 1)
    love.init_time = love.timer.getTime()
    map.load()
end


------------------------------------------------------ LOOP

function love.update(dt)
    --[[
        this essentially caps the delta time
        and may make the game slower in less capable systems
    ]]--
    if dt > 1/60 then
        dt = 1/60
    end
    map.update(dt)
end


------------------------------------------------------ GRAPHICS

function love.draw()
    love.graphics.print(love.timer.getFPS(), 10, 10)
    --love.graphics.line(l.w.getWidth()/2, l.w.getHeight()/2, l.mouse.getX(), l.mouse.getY())
    map.draw()
end


------------------------------------------------------ INPUT


function love.mousepressed(x, y, button)
    if button == 'l' then
        map.click(x, y)
    end
end

function l.keypressed(key, unicode)
    if key == 'f19' then -- fuck you
        screen = l.gs.newScreenshot()
        screen:encode(os.date('%Y%m%d_%H%M%S.png'))
    end
end

------------------------------------------------------ CLEANUP

function love.quit()
    stathat.value("MTQHtprzS4u7J-93w00J9yBodVBQ",
                  "ODg1IGj-82GuiBjozJcgcJH4iEw~",
                  love.timer.getTime()-love.init_time)
end

