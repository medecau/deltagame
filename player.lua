require 'utils'


player = {}

function player.load()
    player.x = 0
    player.y = 0
    player.dx = 0
    player.dy = 0
    player.speed = 400
end

function player.goto(x, y)
    player.dx, player.dy = x, y
end

function player.x_dist()

end

function player.y_dist()
    return player.dy-player.y
end

function player.dist(x, y)
    return math.dist(player.x,player.y,player.dx,player.dy)
end
function player.dist_from_dest()
    return player.dist(player.dx,player.dy)
end

function player.update(dt)

------------------------------------------------------ MOVEMENT
    if player.x ~= player.dx or player.y ~= player.dy then
        player.moving = true
        distx = player.dx-player.x
        disty = player.dy-player.y
        dist = math.sqrt(math.pow(distx, 2)+math.pow(disty, 2))
        if dist > player.speed*dt then
            stepx = distx/dist*player.speed*dt
            stepy = disty/dist*player.speed*dt
            player.x = player.x+stepx
            player.y = player.y+stepy
        else
            player.x = player.dx
            player.y = player.dy
        end
    else
        player.moving = false
    end

end


function player.draw()
    l.gs.setColor(255,255,255)
    l.gs.circle('line', player.x, player.y, 20, 20)
    if player.moving then
        l.gs.line(player.x, player.y, player.dx, player.dy)
        l.gs.print(player.dist_from_dest(), player.dx, player.dy)
    end
end
