class Solution {
    func twoSum(nums: [Int], _ target: Int) -> [Int] {
        var dic = [Int:Int]()
        var res = [Int]()
        for num in nums{
            if let _ = dic[num] {
                dic[num]! += 1
            }else{
                dic[num] = 1
            }
        }
        for (key,_) in dic{
            let tar = target - key
            dic[key]! -= 1
            if let dt = dic[tar] where dt > 0{
                for (index,num) in nums.enumerate(){
                    if (num == key)||(num == tar){
                        res.append(index)
                    }
                }
                return res
            }
            dic[key]! += 1
        }
        return res
    }
}