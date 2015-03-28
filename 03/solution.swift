// The prime factors of 13195 are 5, 7, 13 and 29.
//
// What is the largest prime factor of the number 600851475143 ?


// Get the sqrt function
import Darwin


func isPrime(n:Int) -> Bool {
    let squareRoot = sqrt(Double(n))
    for var i = 2; i < Int(squareRoot); i++ {
        if n % i == 0 {
            return false
        }
    }
    return true
}


func largestPrimeFactor(var n:Int) -> Int {
    var largest = 1
    var i = 2

    while n > 1 {
        if n % i == 0 {
            n = n / i
            if isPrime(i) && i  > largest {
                largest = i
            }
        }
        else {
            i++
        }
    }
    return largest
}

println( largestPrimeFactor(1) )
println( largestPrimeFactor(7) )
println( largestPrimeFactor(8) )
println( largestPrimeFactor(600851475143) )
