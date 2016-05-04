func singleNumber(nums: [Int]) -> [Int] {
    let xxory = nums.reduce(0) { (cb, s) -> Int  in
        return cb ^ s
    }
    let mask = xxory & ~(xxory - 1)
    var x = 0
    var y = 0
    nums.forEach { (num) in
        if num & mask != 0 {
            x ^= num
        }else{
            y ^= num
        }
    }
    return [x,y]
}