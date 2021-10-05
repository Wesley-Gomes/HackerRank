function getLetter(s) {
    let letter;
    const listA = ["a","e","i","o","u"];
    const listB = ["b","c","d","f","g"];
    const listC = ["h","j","k","l","m"];
    const listD = ["n","p","q","r","s","t","u","v","w","x","y","z"];
    
    switch (true)
    {
        case listA.includes(s[0]) :
            letter = "A";
            break;
        case listB.includes(s[0]) :
            letter = "B";
            break;
        case listC.includes(s[0]) :
            letter = "C";
            break;
        case listD.includes(s[0]) :
            letter = "D";
            break;
    }
    
    return letter;
}