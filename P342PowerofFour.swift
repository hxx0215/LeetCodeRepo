func isPowerOfFour(num: Int) -> Bool {
    let d:Double = abs(Double(num))
    let p = log(d)/log(4.0)
    let b = pow(4, Double(Int(p)))
    return Int(b) == Int(d)
}