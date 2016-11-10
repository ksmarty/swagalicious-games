function love.load()
  ballX = 150
  ballY = 100
  
  success = love.window.setMode( 600, 600)
  
  --Draw Checkerboard
  

  
  
end

function love.draw()
  
  
  --Draw Checkerboard
  
  --I is for columns
  for i = 0, 8, 1 do
    redFirst = true
    
    if not (i % 2 == 0) then
      redFirst = false
    end
    -- J is for rows
    for j = 0,8,1 do
    
      if (redFirst) then
    
        if (j % 2 == 0) then
          love.graphics.setColor(160,82,45,255)
    
        else
          love.graphics.setColor(40,40,40,255)
    
        end
      else
        if (j % 2 == 0) then
          love.graphics.setColor(40,40,40,255)
        else
          love.graphics.setColor(160,82,45,255)
    
        end
      end
  
    
        love.graphics.rectangle("fill",j*75,i*75,75,75)
    end
  end
  
  
  --[[
  love.graphics.rectangle("fill",ballX,ballY,100,100)

  
  if (love.keyboard.isDown("left")) then
    ballX = ballX - 1
  end
  
  if (love.keyboard.isDown("right")) then
  ballX = ballX + 1
  end

  if (love.keyboard.isDown("up")) then
  ballY = ballY - 1
  end

  if (love.keyboard.isDown("down")) then
  ballY = ballY + 1
  end
  ]]--
  
  
  
  

end

function love.update()
  
  
  
end

function moveLeft()

end


function love.keypressed(key, scancode, isrepeat)

end

function love.keyreleased (key)
  
  
end