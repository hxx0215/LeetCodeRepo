func reverse(x: Int) -> Int {
    var sign = 1
    if x < 0 {
        sign = -1
    }
    var input = abs(x)
    var a = [Int]()
    while (input > 0){
        a.append(input % 10)
        input = input / 10
    }
    var res = 0
    for i in a{
        res = res * 10 + i
    }
    if res > 2147483650{ // 奇怪的问题
        return 0
    }
    return res * sign
}