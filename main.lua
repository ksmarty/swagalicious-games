function love.load()
  ballX = 150
  ballY = 100
  
  success = love.window.setMode( 800, 800)
  
  
  blackPieces = {}
  whitePieces = {}
    
  for i = 1, 12 do
    blackPieces[i] = {x = 0, y = 0, queen = false}
    
    whitePieces[i] = {x = 0, y = 0, queen = false}
  end
 



  
  
end

function love.draw()
  
  
  --Draw Checkerboard
  
  --I is for columns
  for i = 0, 7, 1 do
    greyFirst = true
    
    if not (i % 2 == 0) then
      greyFirst = false
    end
    -- J is for rows
    for j = 0,7,1 do
    
    
      --If greFirst, even columns start grey, if not, even columns start brown
      if not (greyFirst) then
    
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
  
  
  
  
  








love.graphics.setColor(255,255,255,255)
 
 
 
 --Rows
  for i = 0, 2 do
    
    greyFirst = true
    
    if not (i % 2 == 0) then
      greyFirst = false
    end
    
    --Columns
    for j = 0, 3 do
      
      if not (greyFirst) then
      
      love.graphics.print("RED",(j)*150,(i)*75)
      
      else
      
      love.graphics.print("RED",(j+1)*150-75,(i)*75)
      
      end
      
    end
  
  end
end

function love.update()
  
  
  
end
