func removeDuplicates(inout nums: [Int]) -> Int {
    guard nums.count > 0 else{
        return 0
    }
    var index = 0
    var lastnum = nums[0] - 1
    var count = 0
    while index < nums.count{
        if nums[index] != lastnum{
            lastnum = nums[index]
            index += 1
            count = 0
        }else{
            count += 1
            if (count > 1){
                nums.removeAtIndex(index)
            }else{
                index += 1
            }
        }
    }
    return nums.count
}