var logo, picWidth, picHeight : int
var border, borderWidth, borderHeight : int
var bankNumFont : int

logo := Pic.FileNew('td_canada.jpg')
picWidth := Pic.Width(logo)
picHeight := Pic.Height(logo)

border := Pic.FileNew('bg.bmp')
borderWidth := Pic.Width(border)
borderHeight := Pic.Height(border)

var logo_small : int := Pic.Scale(logo, picWidth div 5.5, picHeight div 5.5)
var border_small : int := Pic.Scale(border, borderWidth div 4.1, borderHeight div 4.1)

var tabLength : string := "    "
var name : string := "KING CYRIN"
var address : string := "1337 MLG DRIVE"
var address2 : string := "MARKHAM, ON, N4H BR0"
var bankNumber : string := "21-0123/9876"
var acctNum : string := "716953"

put ""
put ""
put tabLength + name + "                                            1337"
put tabLength + address + "                                    " + bankNumber
put tabLength + address2 + "                                       " + acctNum
put "                                     Date:_________________"
put ""
put ""
put tabLength + "_____________________________________________________| ",
    "$_________"
put tabLength + "PAY TO THE ORDER OF"
put ""
put tabLength + "_________________________________________________________ DOLLARS"
put ""
put ""
put ""
put "                 2933 MAJOR MACKENZIE DRIVE"
put "                 MAPLE, ON L6A3N9"
put ""
% put ""
put tabLength + "MEMO ___________________________" + "      " + "___________________________"

bankNumFont := Font.New("OCR A Extended:12:bold")
Font.Draw(":1337: :98760123: :7331: :" + acctNum + ":", 40, 60, bankNumFont, black)

% I could have drawn these picture earlier on in the code
% but doing so will mess stuff up (you can try it out and see what happens :>)
Pic.Draw(logo_small, 50, 140, picMerge)
Pic.Draw(border_small, 0, 0, picMerge)

Font.Free(bankNumFont)

