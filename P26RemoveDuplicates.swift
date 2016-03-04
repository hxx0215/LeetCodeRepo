func removeDuplicates(inout nums: [Int]) -> Int {
    var last = nums.first
    var index = 1
    while index < nums.count{
        if nums[index] == last{
            nums.removeAtIndex(index)
        }else{
            last = nums[index]
            index += 1
        }
    }
    return nums.count
}
