local mainMenu={};

function mainMenu.menu()
    love.window.setTitle("Menu - Autism Checkers")
    io.write('Would you like to play checkers(1) or exit(2)?')
    local choice = io.read()
    if (choice == 1) then
      --Continue
    elseif (choice == 2) then
      love.window.close()
    end
end
