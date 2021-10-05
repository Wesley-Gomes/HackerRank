function vowelsAndConsonants(s) {
    let i;
    const vowels = ['a','e','i','o','u'];
    
    for (i = 0; i < s.length; i++)
    { 
        if (vowels.includes(s[i].toLowerCase()))
        {
            console.log(s[i]);
        }
    }
    
    for(i = 0; i < s.length; i++)
    {
        if (!vowels.includes(s[i].toLowerCase()))
        {
            console.log(s[i]);
        }
    }
}