func myPow(x: Double, _ n: Int) -> Double {
    if n < 0{
        return 1 / myPow(x, -n)
    }
    if n == 0{
        return 1
    }
    if n == 1{
        return x
    }
    if n % 2 == 0{
        let base = myPow(x, n / 2)
        return base * base
    }else{
        let base = myPow(x, n / 2)
        return base * base * x
    }
}