

tabLowerCases = [
    ["a", [[1, 0,       0, 0,       0, 0]] ],
    ["b", [[1, 0,       1, 0,       0, 0]] ],
    ["c", [[1, 1,       0, 0,       0, 0]] ],
    ["d", [[1, 1,       0, 1,       0, 0]] ],
    ["e", [[1, 0,       0, 1,       0, 0]] ],
    ["f", [[1, 1,       0, 1,       0, 0]] ],
    ["g", [[1, 1,       1, 1,       0, 0]] ],
    ["h", [[1, 0,       1, 1,       0, 0]] ],
    ["i", [[0, 1,       1, 0,       0, 0]] ],
    ["j", [[0, 1,       1, 1,       0, 0]] ],
    ["k", [[1, 0,       0, 0,       1, 0]] ],
    ["l", [[1, 0,       1, 0,       1, 0]] ],
    ["m", [[1, 1,       0, 0,       1, 0]] ],
    ["n", [[1, 1,       0, 1,       1, 0]] ],
    ["o", [[1, 0,       0, 1,       1, 0]] ],
    ["p", [[1, 1,       1, 0,       1, 0]] ],
    ["q", [[1, 1,       1, 1,       1, 0]] ],
    ["r", [[1, 0,       1, 1,       1, 0]] ],
    ["s", [[0, 1,       1, 0,       1, 0]] ],
    ["t", [[0, 1,       1, 1,       1, 0]] ],
    ["u", [[1, 0,       0, 0,       1, 1]] ],
    ["v", [[1, 0,       1, 0,       1, 1]] ],
    ["w", [[0, 1,       1, 1,       0, 1]] ],
    ["x", [[1, 1,       0, 0,       1, 1]] ],
    ["y", [[1, 1,       0, 1,       1, 1]] ],
    ["z", [[1, 0,       0, 1,       1, 1]] ],
];

// uppercase characters
carMaj = [0, 1,       0, 0,       0, 1];
tabUppercases = [for(i = [0:25]) [chr(65+i), [carMaj, tabLowerCases[i][1][0] ] ]];
    
// other
// Source: https://fr.wikipedia.org/wiki/Braille
tabOthers = [
    [" ", [[0, 0,       0, 0,       0, 0]] ],

    // french accents
    ["à", [[1, 0,       1, 1,       1, 1]] ],
    ["â", [[1, 0,       0, 0,       0, 1]] ],
    ["ç", [[1, 1,       1, 0,       1, 1]] ],
    ["è", [[0, 1,       1, 0,       1, 1]] ],
    ["é", [[1, 1,       1, 1,       1, 1]] ],
    ["ê", [[1, 0,       1, 0,       0, 1]] ],
    ["ë", [[1, 1,       1, 0,       0, 1]] ],
    ["î", [[1, 1,       0, 0,       0, 1]] ],
    ["ï", [[1, 1,       1, 1,       0, 1]] ],
    ["ô", [[1, 1,       0, 1,       0, 1]] ],
    ["œ", [[0, 1,       1, 0,       0, 1]] ],
    ["ù", [[0, 1,       1, 1,       1, 1]] ],
    ["û", [[1, 0,       0, 1,       0, 1]] ],
    ["ü", [[1, 0,       1, 1,       0, 1]] ],
    
    // ponctuation
    [".", [[0, 0,       1, 1,       0, 1]] ],
    [",", [[0, 0,       1, 0,       0, 0]] ],
    ["?", [[0, 0,       1, 0,       0, 1]] ],
    [";", [[0, 0,       1, 0,       1, 0]] ],
    [":", [[0, 0,       1, 1,       0, 0]] ],
    ["!", [[0, 0,       1, 1,       1, 0]] ],
    ["(", [[0, 0,       1, 0,       1, 1]] ],
    [")", [[0, 0,       0, 1,       1, 1]] ],
    ["\"", [[0, 0,       1, 1,       1, 1]] ],
    ["-", [[0, 0,       0, 0,       1, 1]] ],
    ["'", [[0, 0,       0, 0,       1, 0]] ],
    
    // special characters
    ["§", [[0, 0,       0, 1,       0, 0], 
           [1, 1,       1, 0,       1, 0]] ],
    ["&", [[0, 0,       0, 1,       0, 0], 
           [1, 1,       1, 1,       1, 1]] ],
    ["¥", [[0, 1,       0, 1,       0, 0], 
           [1, 1,       0, 1,       1, 1]] ],
    ["€", [[0, 1,       0, 1,       0, 0], 
           [1, 0,       0, 1,       0, 0]] ],
    ["$", [[0, 1,       0, 1,       0, 0], 
           [0, 1,       1, 0,       1, 0]] ],
    ["£", [[0, 1,       0, 1,       0, 0], 
           [1, 0,       1, 0,       1, 0]] ],
    ["©", [[0, 0,       0, 1,       0, 0], 
           [1, 1,       0, 0,       0, 0]] ],
    ["®", [[0, 0,       0, 1,       0, 0], 
           [1, 1,       1, 0,       1, 0]] ],
    ["™", [[0, 0,       0, 1,       0, 0], 
           [1, 0,       1, 1,       1, 0]] ],
    ["%", [[0, 0,       0, 1,       0, 0], 
           [0, 1,       0, 0,       1, 1]] ],
    ["‰", [[0, 0,       0, 1,       0, 0], 
           [0, 1,       0, 0,       1, 1],
           [0, 1,       0, 0,       1, 1]] ],
    ["‱", [[0, 0,       0, 1,       0, 0], 
           [0, 1,       0, 0,       1, 1],
           [0, 1,       0, 0,       1, 1],
           [0, 1,       0, 0,       1, 1]] ],
    
];

tabAllSigns = concat(tabLowerCases, tabUppercases, tabOthers);

// transform tab of indices into braille signs
function getBrailleSigns(tabIndices, i, result = []) = 
    (i == len(tabIndices) 
        ? result 
        : concat(tabAllSigns[tabIndices[i]][1], 
                 getBrailleSigns(tabIndices, i+1, result)
          )
    );


module writeBrailleDots(dots, d = 1.2, h = 0.5) {
    posX = [2, 2, 4, 4, 6, 6];
    posY = [2.5, 4.5, 2.5, 4.5, 2.5, 4.5];

    for ( i = [0:5] ) {
        if (dots[i] == 1) 
            translate([posX[i], posY[i], 0]) 
                cylinder(d=d, h=h, $fn = 10);
    }

}

// default char size
defaultCharWidth = 6;
defaultCharHeight = 10;

module text2braille(text, w=defaultCharWidth, h=defaultCharHeight) {
    // get indices for each characters
    brailleSignsIndices = search(text, tabAllSigns);

    // get braille characters from indices
    brailleSigns = getBrailleSigns(brailleSignsIndices, 0);

    echo(str("Resultat Braille : ", brailleSigns));
    echo(str("Nombre de caractères : ", len(text)));
    echo(str("Nombre de caractères braille: ", len(brailleSigns)));
    
    hBase = 1;
    
    // basement
    cube([h, w * len(brailleSigns), hBase]);
    
    // dots
    for (i = [0:len(brailleSigns) - 1]) {
        translate([0, w * i, hBase]) 
            writeBrailleDots(brailleSigns[i]);
        echo("Caractère braille : ", i, " - ", brailleSigns[i]);
    }
}


module textList2Braille(textList,
        w=defaultCharWidth,
        h=defaultCharHeight) {

    for (i = [0, len(textList) -1]) {
        translate([i * h, 0, 0])
            text2braille(textList[i], w=w, h=h);
    }
}

//text2braille("Hello World!");

//translate([2 * defaultCharHeight, 0, 0])
//    textList2Braille(["Bonjour", "les copains !"]);

