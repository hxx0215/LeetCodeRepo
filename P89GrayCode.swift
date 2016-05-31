func grayCode(n: Int) -> [Int] {
    if n == 0{
        return [0]
    }else{
        let a = grayCode(n-1)
        let b = a.reverse().map({ num in
            return 1 << (n-1) + num
        })
        return a + b
    }
}