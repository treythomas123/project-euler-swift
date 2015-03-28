// A palindromic number reads the same both ways. The largest palindrome made
// from the product of two 2-digit numbers is 9009 = 91 × 99.
//
// Find the largest palindrome made from the product of two 3-digit numbers.

extension String {
    func reverse() -> String {
        var reverse = ""
        for char in self {
            reverse = String(char) + reverse
        }
        return reverse
    }
}

extension Int {
    func isPalindromic() -> Bool {
        let selfAsString = String(self)
        return selfAsString.reverse() == selfAsString
    }
}

var largestPalindrome = 0

for a in 100...999 {
    for b in a...999 {
        let product = a * b
        if product > largestPalindrome && product.isPalindromic() {
            largestPalindrome = product
        }
    }
}

println(largestPalindrome)
