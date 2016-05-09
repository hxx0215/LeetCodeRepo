func summaryRanges(nums: [Int]) -> [String] {
    var ret = [String]()
    var begin = 0
    for (idx,num) in nums.enumerate(){
        if idx == 0 {
            begin = num
        }else{
            if num != nums[idx - 1] + 1{
                if nums[idx - 1] == begin{
                    ret.append("\(begin)")
                }else{
                    ret.append("\(begin)->\(nums[idx - 1])")
                }
                begin = nums[idx]
            }
        }
        if idx == nums.count - 1{
            if begin == nums[idx]{
                ret.append("\(begin)")
            }else{
                ret.append("\(begin)->\(nums[idx])")
            }
        }
    }
    return ret
}