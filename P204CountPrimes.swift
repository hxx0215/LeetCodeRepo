func countPrimes(n: Int) -> Int {
    if n < 2{
        return 0
    }
    var a = [Bool]()
    for _ in 0..<n{
        a.append(true)
    }
    var ans = 0
    for (i,_) in a.enumerate(){
        if i<2 {
            continue
        }
        if a[i]{
            ans += 1
            var check = i + i
            while check < a.count{
                a[check] = false
                check += i
            }
        }
    }
    return ans
}