function love.load()
  ballX = 150
  ballY = 100
  
  success = love.window.setMode( 800, 800)
  love.window.setTitle("Autism Checkers")
  
  blackPieces = {}
  whitePieces = {}
    
  for i = 1, 12 do
    blackPieces[i] = {x = 0, y = 0, queen = false, alive = true}
    
    whitePieces[i] = {x = 0, y = 0, queen = false, alive = true}
  end
 
  


  
  
end

function love.draw()
  
  
  --Draw Checkerboard
  
  --I is for columns
  for i = 1, 8, 1 do
    greyFirst = true
    
    if (i % 2 == 0) then
      greyFirst = false
    end
    -- J is for rows
    for j = 1,8,1 do
    
    
      --If greFirst, even columns start grey, if not, even columns start brown
      if not (greyFirst) then
    
        if (j % 2 == 1) then
          love.graphics.setColor(160,82,45,255)
    
        else
          love.graphics.setColor(40,40,40,255)
    
        end
      else
        if (j % 2 == 1) then
          love.graphics.setColor(40,40,40,255)
        else
          love.graphics.setColor(160,82,45,255)
    
        end
      end
  
    
        love.graphics.rectangle("fill",(j-1)*75,(i-1)*75,75,75)
    end
  end
  
  
  
  
  








love.graphics.setColor(255,255,255,255)
 
 
 --Sets the positions of the pieces
 --Rows
  for i = 1, 3 do
    
    greyFirst = true
    
    if not (i % 2 == 0) then
      greyFirst = false
    end
    
    --Columns
    for j = 1, 4 do
      
      if not (greyFirst) then
      
      love.graphics.print("RED",(j-1)*150,(i-1)*75)
      
      love.graphics.print("BLA",(j)*150-75,(i+4)*75)
      
      whitePieces[4*(i-1)+j].x = (j +1) * 2 - 3
      blackPieces[4*(i-1)+j].x = j*2
      

      else
      
      love.graphics.print("RED",(j)*150-75,(i-1)*75)
      
      love.graphics.print("BLA",(j-1)*150,(i+4)*75)
      
      whitePieces[4*(i-1)+j].x = j*2
      blackPieces[4*(i-1)+j].x = (j +1) * 2 - 3
      
      end
      
      whitePieces[4*(i-1)+j].y = i
      blackPieces[4*(i-1)+j].y = i+5
      
    end
  
  end



  
  
  
  
  
  
  
  --Prints out all the pieces and their location
  love.graphics.setColor(255,255,255,255)
  for i = 1, #whitePieces do
    love.graphics.print("White Piece "..i.." "..whitePieces[i].x..","..whitePieces[i].y,20,610+12*i)
    
    love.graphics.circle("fill",whitePieces[i].x*75-37, whitePieces[i].y*75-37, 20,20)
    
  end
  
  for i = 1, #blackPieces do
    love.graphics.setColor(255,255,255,255)
    love.graphics.print("Black Piece "..i.." "..blackPieces[i].x..","..blackPieces[i].y,160,610+12*i)
    
    love.graphics.setColor(0,0,0,255)
    love.graphics.circle("fill",blackPieces[i].x*75-37, blackPieces[i].y*75-37, 20,20)
  end


  --Draw a box around the currently selected tile
    
  love.graphics.setColor(0,255,0,255)
  
  if not (selectedX > 7 or selectedY > 7) then
  love.graphics.rectangle("line",selectedX*75,selectedY*75,75,75)
  end


  --Print mouse Position
  love.graphics.setColor(255,255,255,255)
  
  love.graphics.print(mouseX,700,50)
  love.graphics.print(mouseY,700,60)
  
    love.graphics.print(selectedX,700,90)
  love.graphics.print(selectedY,700,100)

end

function love.update()
  
    mouseX, mouseY = love.mouse.getPosition();
    
    selectedX = (math.ceil(mouseX/75)-1)
    
    selectedY = (math.ceil(mouseY/75)-1)
  
end
