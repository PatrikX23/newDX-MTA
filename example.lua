
local sx, sy = guiGetScreenSize()

function onStart()
    outputDebugString("newDX - Example Loaded", 3)
end
addEventHandler("onClientResourceStart", getResourceRootElement(), onStart)

function by()
    newDXshadowedText("newDX - By PatrikX | github.com/PatrikX23",sx/2-200/2, sy/2-25/2-500, 200+sx/2-200/2, 25+sy/2-25/2-500, tocolor(255,255,255,255), 1, "bankgothic", "center", "center")
end
addEventHandler("onClientRender", root, by) -- REMOVE THIS

function draw()
    newDXLinedRectangle(sx/2-200/2, sy/2-25/2+200, 200, 25, tocolor(0,0,0,180), tocolor(0,0,0,255), 2)
    newDXroundedRectangle(sx/2-200/2, sy/2-25/2+100, 200, 25, tocolor(0,0,0,180))
    newDXroundedBorder(sx/2-200/2, sy/2-25/2+100, 200, 25, tocolor(0,0,0,255))
end
addEventHandler("onClientRender", root, draw)

local start = getTickCount() -- NEED
function loading()
    local now = getTickCount() -- NEED
    newDXLoading(sx/2-400/2, sy/2-30/2+400, 400, 30, 2, tocolor(0,0,0,180), tocolor(0,0,0,255), tocolor(245, 71, 71,200), 5000) -- 5000 is 5sec in ms
    if now > start + 5000 then -- 5000 is 5sec in ms
		start = getTickCount()
		outputChatBox("Loading is done!",0,255,0)
        removeEventHandler("onClientRender", root, loading)
        removeEventHandler("onClientRender", root, draw)
    end
end
addEventHandler("onClientRender", root, loading)