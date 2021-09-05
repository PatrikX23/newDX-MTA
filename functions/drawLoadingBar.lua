function onStart()
    outputDebugString("newDX - drawLoadingBar Loaded", 3)
end
addEventHandler("onClientResourceStart", getResourceRootElement(), onStart)

local start = getTickCount()
function newDXLoading(x, y, width, height, borderSize, color, color2, colorLoading, second)
    local now = getTickCount()
    local seconds = second or 5000
    local color = color or tocolor(0,0,0,170)
    local color2 = color2 or tocolor(0,0,0,255)
	local colorLoading = colorLoading or tocolor(255,255,0,170)
	local borderSize = borderSize or 2.00
    local with = interpolateBetween(0,0,0,width,0,0, (now - start) / ((start + seconds) - start), "Linear")
    newDXLinedRectangle(x, y ,width ,height -10, color, color2, borderSize)
    newDXLinedRectangle(x, y, with ,height -10, colorLoading, tocolor(0,0,0,0))
 end
