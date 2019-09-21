function onStart()
    outputDebugString("newDX - drawRoundedRectangle/Border Loaded", 3)
end
addEventHandler("onClientResourceStart", getResourceRootElement(getThisResource()), onStart)

function newDXroundedRectangle(x, y, w, h, bgColor, postGUI)
	if (x and y and w and h) then
		if (not borderColor) then
			borderColor = tocolor(0, 0, 0, 200);
		end
		
		if (not bgColor) then
			bgColor = borderColor;
		end
		
		--> Background
		dxDrawRectangle(x, y, w, h, bgColor, postGUI);
		
		--> Border
        dxDrawRectangle(x + 2, y - 1, w - 4, 1, bgColor, postGUI); -- top
		dxDrawRectangle(x + 2, y + h, w - 4, 1, bgColor, postGUI); -- bottom
		dxDrawRectangle(x - 1, y + 2, 1, h - 4, bgColor, postGUI); -- left
		dxDrawRectangle(x + w, y + 2, 1, h - 4, bgColor, postGUI); -- right
	end
end

function newDXroundedBorder(x, y, w, h, borderColor, postGUI)
	if (x and y and w and h) then
		if (not borderColor) then
			borderColor = tocolor(255, 255, 255, 230)
		end

		dxDrawRectangle(x - 1, y + 1, 1, h - 2, borderColor, postGUI); -- left
		dxDrawRectangle(x + w, y + 1, 1, h - 2, borderColor, postGUI); -- right
		dxDrawRectangle(x + 1, y - 1, w - 2, 1, borderColor, postGUI); -- top
		dxDrawRectangle(x + 1, y + h, w - 2, 1, borderColor, postGUI); -- bottom

		dxDrawRectangle(x, y, 1, 1, borderColor, postGUI);
		dxDrawRectangle(x + w - 1, y, 1, 1, borderColor, postGUI);
		dxDrawRectangle(x, y + h - 1, 1, 1, borderColor, postGUI);
		dxDrawRectangle(x + w - 1, y + h - 1, 1, 1, borderColor, postGUI);
	end
end
