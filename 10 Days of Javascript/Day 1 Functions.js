function factorial(n){
    let factorial;

    factorial = 1;

    for(let i = n; i > 0; i--)
    {
        factorial = factorial * i;
    }
    
    return factorial;
}

function main() {
    const n = +(readLine());
    
    console.log(factorial(n));
}