func trailingZeroes(n: Int) -> Int {
    var p = 0
    var tn = n
    while tn > 0{
        tn /= 5
        p += tn
    }
    return p
}