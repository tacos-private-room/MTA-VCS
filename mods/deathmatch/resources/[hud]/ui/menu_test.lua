local menu = createMenu("Test Menu")
addMenuItem(menu,"Burger","$10") 
addMenuItem(menu,"Item 2") 
showMenuForPlayer(menu)
--hideMenuForPlayer(menu)
--clearMenu(menu)
setMenuHeader(menu,"New Header")
setMenuColumnHeader(menu,1,"Item")
setMenuColumnHeader(menu,2,"Price")
addEventHandler("onPlayerSelectedMenuRow",menu,function(shownedMenu, selectedItem) 
    outputChatBox(string.format( "Selected Item %d", selectedItem))
end )
addEventHandler("onPlayerMenuExit",menu,function(shownedMenu, selectedItem) 
    outputChatBox(string.format( "Menu Exit pressed"))
end )