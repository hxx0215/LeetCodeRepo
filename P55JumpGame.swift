func canJump(nums: [Int]) -> Bool {
    var maxDist = 0
    var currentPos = 0
    var lastPos = -1
    while maxDist < nums.count - 1{
        let curMaxDist = maxDist
        for i in currentPos...curMaxDist{
            if nums[i] + i > maxDist{
                maxDist = nums[i] + i
            }
        }
        currentPos = curMaxDist
        if lastPos != currentPos {
            lastPos = currentPos
        }else{
            return false
        }
    }
    return true
    
}