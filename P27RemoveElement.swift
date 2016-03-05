func removeElement(inout nums: [Int], _ val: Int) -> Int {
    var index = 0
    while index < nums.count{
        if nums[index] == val{
            nums.removeAtIndex(index)
        }else{
            index += 1
        }
    }
    return nums.count
}