var f = [0:1,1:1]
func climbStairs(n: Int) -> Int {
    if let ret = f[n]{
        return ret
    }else{
        f[n] = climbStairs(n-1) + climbStairs(n-2)
        return f[n]!
    }
}