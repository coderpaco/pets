local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local gui = Library:create{
    Theme = Library.Themes.Serika
}

local tab = gui:tab{
    Icon = "rbxassetid://6034996695",
    Name = "Adopt Me"
}

local ChatMain = game:GetService("Players").LocalPlayer:WaitForChild("PlayerScripts").ChatScript.ChatMain
local MessagePosted = require(ChatMain).MessagePosted

tab:button({
    Name = "Roll1",
    Callback = function()
        MessagePosted.fire("", "Say \"Roll\" to play dice! Roll higher than 55 to win!")
    end,
})

tab:button({
    Name = "Roll2",
    Callback = function()
        MessagePosted.fire("", "Say \"Roll\" to win big! Roll higher than 55 to win!")
    end,
})

tab:button({
    Name = "Roll3",
    Callback = function()
        MessagePosted.fire("", "Say \"Roll\" to place your bets! Roll higher than 55 to win!")
    end,
})

tab:button({
    Name = "Welcome",
    Callback = function()
        MessagePosted.fire("", "Welcome to Dicebot!")
    end,
})

tab:button({
    Name = "Input pet",
    Callback = function()
        MessagePosted.fire("", "Please input a pet or item of any rarity. If you win, you'll recieve the items back and win a bonus of the same rarity!")
    end,
})

tab:button({
    Name = "Trade completed",
    Callback = function()
        MessagePosted.fire("", "Trade completed, bot has recieved your items.")
    end,
})

tab:button({
    Name = "Error trades private",
    Callback = function()
        MessagePosted.fire("", "Error completing trade. Please make your trades public!")
    end,
})

tab:button({
    Name = "Error item not found",
    Callback = function()
        MessagePosted.fire("", "Error completing trade. Player item not found!")
    end,
})

tab:button({
    Name = "Error user canceled",
    Callback = function()
        MessagePosted.fire("", "Error completing trade. User canceled the trade!")
    end,
})

tab:button({
    Name = "Error Time limit",
    Callback = function()
        MessagePosted.fire("", "Error completing trade. Trade time limit reached.")
    end,
})

tab:button({
    Name = "Bot now rolling",
    Callback = function()
        MessagePosted.fire("", "Bot is now rolling...")
    end,
})

tab:button({
    Name = "Bot now trading",
    Callback = function()
        MessagePosted.fire("", "Bot is now trading...")
    end,
})

tab:button({
    Name = "Performing bot setup.",
    Callback = function()
        MessagePosted.fire("", "Performing bot setup.")
    end,
})

tab:button({
    Name = "Bot setup complete.",
    Callback = function()
        MessagePosted.fire("", "Bot setup complete.")
    end,
})

tab:textbox({
    Name = "insert a number, 55+ wins",
    Callback = function(Value)
        if tonumber(Value) >= 55 then
            MessagePosted.fire("", ("YOU WON! You rolled a %s"):format(Value))
        else
            MessagePosted.fire("", ("You lost, better luck next time! You rolled a %s"):format(Value))
        end
    end
})
