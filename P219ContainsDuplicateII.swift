func containsNearbyDuplicate(nums: [Int], _ k: Int) -> Bool {
    var dic = [Int:Int]()
    var ret = false
    for (index,num) in nums.enumerate(){
        if let idx = dic[num] where (index - idx < k){
            ret = true
            break
        }else{
            dic[num] = index
        }
    }
    return ret
}