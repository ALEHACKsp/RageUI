local mainMenu;
local subMenu;

mainMenu = RageUI.CreateMenu("Title", "Subtitle", {
    Items = function(self)

        self:addButton("Label", "Description", {}, true, {
            onSelected = function()

            end
        }, subMenu)

    end,
    Panels = function(self)

        self:addColorPanel("Title", "Colours", 1, 1, {
            onColorChange = function()

            end
        }, 1)

    end,
})

mainMenu.onIndexChange = function(Index)

end

mainMenu.onClosed = function()

end

subMenu = RageUI.CreateMenu(mainMenu, "Title", "SubTitle", {
    Items = function(self)

        self:addButton("Label", "Description", {}, true, {
            onSelected = function()

            end
        })

    end,
})

subMenu.onClosed = function()

end