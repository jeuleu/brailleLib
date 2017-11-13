include <brailleLib.scad>

text2braille("Patrick !!!!");

translate([2 * defaultCharHeight, 0, 0])
    textList2Braille(["Bonjour", "les copains !"]);
