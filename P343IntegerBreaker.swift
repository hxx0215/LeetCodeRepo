var ib = [Int:Int]()
var dep = 0
func integerBreak(n: Int) -> Int {
    dep += 1
    defer{
        dep -= 1
    }
    if n < 2 {
        return n
    }
    if let val = ib[n] {
        return val
    }else{
        if dep == 1{
            ib[n] = max(integerBreak(n - 3) * 3, integerBreak(n - 2) * 2,integerBreak(n - 1))
        }else{
            ib[n] = max(integerBreak(n - 3) * 3, integerBreak(n - 2) * 2,integerBreak(n - 1),n)
        }
        return ib[n]!
    }
}