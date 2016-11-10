function love.load()
  ballX = 100;
  ballY = 100;
  
  love.keyboard.setKeyRepeat( true )
end

function love.draw()
  
  love.graphics.rectangle("fill",ballX,ballY,100,100)
end

function love.update()

end

function moveLeft()

end


function love.keypressed(key, scancode, isrepeat)

  if (key == "left")  then
      ballX = ballX + 1
  
  elseif (key == "right") then
      ballX = ballX + 1
  end


end