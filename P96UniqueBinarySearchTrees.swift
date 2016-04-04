func numTrees(n: Int) -> Int {
    return catalan(n)
}

func catalan(n: Int) -> Int{
    return combination(n, m: 2*n) / (n + 1)
}

func combination(n: Int,m: Int) -> Int{
    var ret = 1
    for i in 0..<n{
        ret *= (m-i)
        ret /= (i+1)
    }
    return ret
}
