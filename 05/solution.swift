// 2520 is the smallest number that can be divided by each of the numbers from
// 1 to 10 without any remainder.
//
// What is the smallest positive number that is evenly divisible by all of the
// numbers from 1 to 20?

func gcd(var a: Int, var b:Int) -> Int {
    while ( a != b && a != 0 && b != 0 ) {
        if a > b {
            a -= b
        }
        if b > a {
            b -= a
        }
    }
    return (a > b) ? a : b
}

func lcm(a: Int, b:Int) -> Int {
    return a * b / gcd(a,b)
}


var n = 1

for i in 1...20 {
    n = lcm(n,i)
}

println(n)
