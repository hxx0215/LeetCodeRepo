func plusOne(digits: [Int]) -> [Int] {
    var ret = digits
    ret[ret.count - 1] += 1
    ret = ret.reverse()
    for i in 0..<ret.count - 1{
        ret[i+1] += ret[i] / 10
        ret[i] = ret[i] % 10
    }
    if ret[ret.count - 1] > 9{
        let n = ret[ret.count - 1] / 10
        ret[ret.count - 1] = ret[ret.count - 1] % 10
        ret.append(n)
    }
    return ret.reverse()
}