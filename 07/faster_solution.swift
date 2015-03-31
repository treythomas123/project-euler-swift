// By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
// that the 6th prime is 13.
//
// What is the 10 001st prime number?


// This essentially uses the Sieve of Eratosthenes, but rather than only
// generating primes up to a certain number, it can expand the sieve whenever
// a number is checked for primality that's outside its sieved values. 

class PrimeChecker {
    var sieve: [Bool] = [Bool]()

    init() {
        // Start with initial sieve indicating that 2 is prime
        sieve += [Bool](count: 3, repeatedValue: false)
        sieve[2] = true
    }

    func isPrime(n: Int) -> Bool {
        while sieve.count - 1 < n {
            // add 10000 new elements to the sieve at a time
            addToSieve(10000) 
        }
        return sieve[n]
    }
    
    func addToSieve(count: Int) {
        let firstNew = sieve.count
        sieve += [Bool](count: count, repeatedValue: true)

        for var n = 0; n < sieve.count; n++ {
            if sieve[n] {
                var multiple = 2 * n
                while multiple < firstNew {
                    multiple += n
                }
                while multiple < sieve.count {
                    sieve[multiple] = false
                    multiple += n
                }
            }
        }
    }
}

let primeChecker = PrimeChecker()

var i = 0
for n in 1...10001 {
    do {
        i++
    } while !primeChecker.isPrime(i)
}

println( i )
