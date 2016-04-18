func majorityElement(nums: [Int]) -> Int {
    var major = [Int:Int]()
    for n in nums{
        if let _ = major[n]{
            major[n] = major[n]! + 1
        }else{
            major[n] = 1
        }
    }
    var max = 0
    var ret = 0
    for (key,value) in major{
        if value > max {
            max = value
            ret = key
        }
    }
    return ret
}