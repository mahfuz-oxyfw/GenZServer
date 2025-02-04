-- timing and text config below

-- want to change the font size? change line 16 in ui.css

-- want to change font color? chnage line 20 in ui.css

--[[ want to change the position? use lines 28 - 32, you will need to know some css
tutorial for this is in forum post ]]

-- Created by Floh : )
----------------
---- CONFIG ----
----------------


-- time between each item showing in the cycle in seconds
local cycleTime = 1
-- time before showing watermark again after all items show in seconds
local restTime = 2

-- enable name?
local nameEnabled = true
-- your server name
local name = 'Gen-Z Roleplay'

-- enable link?
local linkEnabled = true
-- your server link
local link = ''

-- enable logo?
-- logo file should be 1:1 (square) and at least 128px x 128px
--[[ if you change the logo file without restarting server,
make sure to /stop simple-watermark, /refresh, /start simple-watermark]]
local logoEnabled = true

--------------------
--------------------
------- CODE -------
--------------------
--------------------
--------------------

local showWatermark = true

print('test')
CreateThread(function()
  Wait(1000)
  --print('hello')
  -- send config values to NUI
  SendNuiMessage(json.encode{
    type = 'setup',
    nametext = name,
    linktext = link,
  })
  Wait(2000)
  while true do

    -- show each item if enabled, then hide
    if nameEnabled then
      --print('Name Enabled')
      -- show name
      SendNuiMessage(json.encode{
        type = 'showItem',
        item = 'name',
      })

      Wait(cycleTime * 1000)
      -- hide
      Wait(1000)
    end

    if linkEnabled then
      --print('Link Enabled')
      -- show link
      SendNuiMessage(json.encode{
        type = 'showItem',
        item = 'link',
      })

      Wait(cycleTime * 1000)
      -- hide
      Wait(1000)
    end

    if logoEnabled then
      --print('Logo Enabled')
      -- show logo
      SendNuiMessage(json.encode{
        type = 'showItem',
        item = 'logo',
      })

      Wait(cycleTime * 1000)
      -- hide
      Wait(1000)
    end

    SendNuiMessage(json.encode{
      type = 'showItem',
      item = 'none',
    })

    Wait(restTime * 1000)
  end
end)
