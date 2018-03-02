% ~ Notes ~
% default maxx = 639
% default maxy = 399
% make your ad look like examples 3 & 4

setscreen("graphics:768,950")

var logo, logoWidth, logoHeight : int

logo := Pic.FileNew("logo_red_on_white_small.jpg")
logoWidth := Pic.Width(logo)
logoHeight := Pic.Height(logo)

var clr_red := RGB.AddColor(191/255, 21/255, 32/255)
var clr_blue := RGB.AddColor(43/255, 111/255, 178/255)
var clr_purple := RGB.AddColor(78/255, 31/255, 129/255)

var clr_purple2 := RGB.AddColor(162/255, 25/255, 91/255) % You're
var clr_green := RGB.AddColor(111/255, 113/255, 54/255)  % richer
var clr_violet := RGB.AddColor(101/255, 86/255, 145/255) % than
var clr_azure := RGB.AddColor(73/255, 153/255, 200/255)  % you
var clr_orange := RGB.AddColor(206/255, 39/255, 37/255)  % think

drawfillbox(0, maxy, maxx, maxy-60, clr_red)

var subFont := Font.New("Arial:44:bold")
var titleFont := Font.New("Arial:80:bold")
var bodyFont := Font.New("Arial:16")
var body2Font := Font.New("Arial:14:bold")
var logoFont := Font.New("Arial:25:bold")
var logo2Font := Font.New("Arial:16:bold")

var subFontWidth := Font.Width("You deserve", subFont)
var titleFontWidth := Font.Width("m,ooo,ore", titleFont)

Font.Draw("You deserve", maxx div 2 - (subFontWidth div 2), maxy-250, subFont, clr_red)

Font.Draw("m,ooo,ore", maxx div 2 - (titleFontWidth div 2), maxy-350, titleFont, clr_blue)
Font.Draw(",",maxx div 2 - Font.Width("m,ooo", titleFont) div 2 - 4, maxy-350, titleFont, clr_purple)
Font.Draw(",",maxx div 2 + Font.Width(",re", titleFont) div 2 - 5, maxy-350, titleFont, clr_purple)

var donut := Pic.FileNew("donut.jpg")

Pic.Draw(donut, maxx div 2 - Font.Width("m,ooo", titleFont) div 2 + 19, maxy-355, picCopy)
Pic.Draw(donut, maxx div 2 - Font.Width("m,ooo", titleFont) div 2 + 23 + 65, maxy-355, picCopy)
Pic.Draw(donut, maxx div 2 - Font.Width("m,ooo", titleFont) div 2 + 23 + 135, maxy-355, picCopy)

Font.Draw("At Scotiabank, we can get you things you've dreamed", maxx div 5, maxy-460, bodyFont, black)
Font.Draw("of like free donuts and free coffee at Tim Hortons. Just", maxx div 3 - 110, maxy-(460+25), bodyFont, black)
Font.Draw("imagine what we can do for your investments", maxx div 3 - 21, maxy-(460+50), bodyFont, black)

Font.Draw("You Really Do Deserve", maxx div 2 + 75, maxy-(640), body2Font, black)
Font.Draw("More. Ask us how.", maxx div 2 + 116, maxy-(640+28), body2Font, black)

Pic.Draw(logo, maxx div 2 + 20, maxy-(640+125), picCopy)

Font.Draw("Investments", maxx div 2 + 85, maxy-(640+145), logoFont, clr_red)

Font.Draw("You're", maxx div 2 - 50 + 35, maxy-(640+175), logo2Font, clr_purple2)
Font.Draw("richer", maxx div 2 - 50 + Font.Width("You're", logo2Font) + 7 + 35, maxy-(640+175), logo2Font, clr_green)
Font.Draw("than", maxx div 2 - 50 + Font.Width("You're", logo2Font) + Font.Width("richer", logo2Font) + 14 + 35, maxy-(640+175), logo2Font, clr_violet)
Font.Draw("you", maxx div 2 - 50 + Font.Width("You're", logo2Font) + Font.Width("richer", logo2Font) + Font.Width("than", logo2Font) + 21 + 35, maxy-(640+175), logo2Font, clr_azure)
Font.Draw("think.", maxx div 2 - 50 + Font.Width("You're", logo2Font) + Font.Width("richer", logo2Font) + Font.Width("than", logo2Font) + Font.Width("you", logo2Font) + 28 + 35, maxy-(640+175), logo2Font, clr_orange)

Font.Draw("scotiabank.com/deservemore", maxx div 2, maxy-(640+175+45), bodyFont, clr_red)

Font.Free(subFont)

