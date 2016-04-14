var up = [String:Int]()
func uniquePaths(m: Int, _ n: Int) -> Int {
    if m == 1 && n == 1{
        return 1
    }
    if m*n == 0 {
        return 0
    }
    if let val = up["\(m),\(n)"]{
        return val
    }else{
        let v = uniquePaths(m - 1, n) + uniquePaths(m, n-1)
        up["\(m),\(n)"] = v
        return v
    }
}