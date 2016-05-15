class Solution {
    func jump(nums: [Int]) -> Int {
        var step = 0
        var maxDist = 0
        var currentPos = 0
        while maxDist < nums.count - 1{
            step += 1
            let curMaxDist = maxDist
            for i in currentPos...curMaxDist{
                if nums[i] + i > maxDist{
                    maxDist = nums[i] + i
                }
            }
            currentPos = curMaxDist
        }
        return step
    }
}