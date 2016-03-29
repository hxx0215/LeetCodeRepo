func searchInsert(nums: [Int], _ target: Int) -> Int {
    var l = 0
    var r = nums.count - 1
    while l <= r{
        let mid = (l + r) / 2
        if nums[mid] == target{
            return mid
        }
        if nums[mid] < target{
            l = mid + 1
        }
        if nums[mid] > target{
            r = mid - 1
        }
    }
    return l
    
}