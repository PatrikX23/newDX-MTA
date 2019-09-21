function onStart()
    outputDebugString("newDX - shadowedText Loaded", 3)
end
addEventHandler("onClientResourceStart", getResourceRootElement(), onStart)

function newDXshadowedText(text,x,y,w,h,color,fontsize,font,aligX,alignY)
    dxDrawText(text,x,y+1,w,h+1,tocolor(0,0,0,255),fontsize,font,aligX,alignY, false, false, false, true) -- Fent
    dxDrawText(text,x,y-1,w,h-1,tocolor(0,0,0,255),fontsize,font,aligX,alignY, false, false, false, true) -- Lent
    dxDrawText(text,x-1,y,w-1,h,tocolor(0,0,0,255),fontsize,font,aligX,alignY, false, false, false, true) -- Bal
    dxDrawText(text,x+1,y,w+1,h,tocolor(0,0,0,255),fontsize,font,aligX,alignY, false, false, false, true) -- Jobb
    dxDrawText(text,x,y,w,h,color,fontsize,font,aligX,alignY, false, false, false, true)
end