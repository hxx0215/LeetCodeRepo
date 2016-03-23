func countBits(num: Int) -> [Int] {
    var ret = [0,1]
    if num == 0{
        return [0]
    }
    if num < 2{
        return ret
    }
    for i in 2...num{
        let left = ret[i / 2]
        let add = i % 2
        ret.append(left + add)
    }
    return ret
}