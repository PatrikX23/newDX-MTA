function onStart()
    outputDebugString("newDX - drawLinedRectangle Loaded", 3)
end
addEventHandler("onClientResourceStart", getResourceRootElement(), onStart)

function newDXLinedRectangle(x,y,w,h,color,color2,size)
    if not color then
        color = tocolor(0,0,0,180)
    end
    if not color2 then
        color2 = color
    end
    if not size then
        size = 3
    end
    dxDrawRectangle(x, y, w, h, color) -- bg
    dxDrawRectangle(x - size, y - size, w + (size * 2), size, color2) -- up
    dxDrawRectangle(x - size, y + h, w + (size * 2), size, color2) -- down
    dxDrawRectangle(x - size, y, size, h, color2) -- left
    dxDrawRectangle(x + w, y, size, h, color2) -- right
end