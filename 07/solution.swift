// By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
// that the 6th prime is 13.
//
// What is the 10 001st prime number?

class PrimeFinder {
    var primes: [Int] = [Int]()

    func next() -> Int {
        if primes.count == 0 {
            primes.append(2)
            return 2
        }

        var possiblePrime = primes[primes.endIndex - 1]
        var isPrime: Bool
        do {
            possiblePrime++
            isPrime = true
            for prime in primes {
                if possiblePrime % prime == 0 {
                    isPrime = false
                    break
                }
            }
        } while ( !isPrime )

        primes.append(possiblePrime)
        return possiblePrime
    }
}

let primeFinder = PrimeFinder()

for i in 1...10000 {
    primeFinder.next()
}

println( primeFinder.next() )

