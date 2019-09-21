# newDX-MTA

Special DxDraw Functions: rounedRectangle, roundedBorder, shadowedText, linedRectangle, loadingBar

# newDXLinedRectangle

Usage: newDXLinedRectangle(x, y, w, h, color, color2, size)

x - An float representing the absolute origin X position of the rectangle, represented by pixels on the screen.

y - An float representing the absolute origin Y position of the rectangle, represented by pixels on the screen.

w - An float representing the width of the rectangle, drawn in a right direction from the origin.

h - An float representing the height of the rectangle, drawn in a downwards direction from the origin.

color - background color in tocolor(r, g, b, alpha)

color2 - border color in tocolor(r, g, b, alpha)

size - border size in Number

# newDXroundedRectangle

Usage: newDXroundedRectangle(x, y, w, h, bgColor, postGUI)

x - An float representing the absolute origin X position of the rectangle, represented by pixels on the screen.

y - An float representing the absolute origin Y position of the rectangle, represented by pixels on the screen.

w - An float representing the width of the rectangle, drawn in a right direction from the origin.

h - An float representing the height of the rectangle, drawn in a downwards direction from the origin.

bgColor - background color in tocolor(r, g, b, alpha)

postGUI - A bool representing whether the line should be drawn on top of or behind any ingame GUI.

# newDXroundedBorder

Usage: newDXroundedBorder(x, y, w, h, borderColor, postGUI)

x - An float representing the absolute origin X position of the rectangle, represented by pixels on the screen.

y - An float representing the absolute origin Y position of the rectangle, represented by pixels on the screen.

w - An float representing the width of the rectangle, drawn in a right direction from the origin.

h - An float representing the height of the rectangle, drawn in a downwards direction from the origin.

borderColor - border color in tocolor(r, g, b, alpha)

postGUI - A bool representing whether the line should be drawn on top of or behind any ingame GUI.

# newDXLoading

Usage: newDXLoading(x, y, width, height, borderSize, color, color2, colorLoading, second)

x - An float representing the absolute origin X position of the rectangle, represented by pixels on the screen.

y - An float representing the absolute origin Y position of the rectangle, represented by pixels on the screen.

width - An float representing the width of the rectangle, drawn in a right direction from the origin.

height - An float representing the height of the rectangle, drawn in a downwards direction from the origin.

borderSize - like in newDXLinedRectangle

color - background color in tocolor(r, g, b, alpha)

color2 - border color in tocolor(r, g, b, alpha)

colorLoading - loadingbar color in tocolor(r, g, b, alpha)

second - second in ms 5000ms is 5sec

# newDXshadowedText

Usage: newDXshadowedText(text, x, y, w, h, color, fontsize, font, aligX, alignY)

x - An float representing the absolute origin X position of the rectangle, represented by pixels on the screen.

y - An float representing the absolute origin Y position of the rectangle, represented by pixels on the screen.

w - An float representing the width of the rectangle, drawn in a right direction from the origin.

h - An float representing the height of the rectangle, drawn in a downwards direction from the origin.

color - text color in toclor(r, g, b, alpha)

fontsize - text scale

font - dxCreateFont or default MTA font

aligX - horizontal alignment of the text within the bounding box. Can be "left", "center" or "right".

alignY - vertical alignment of the text within the bounding box. Can be "top", "center" or "bottom".
