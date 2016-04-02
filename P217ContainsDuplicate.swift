func containsDuplicate(nums: [Int]) -> Bool {
    var dic = [Int:Int]()
    var ret = false
    nums.forEach { (num) in
        if let _ = dic[num]{
            ret = true
        }else{
            dic[num] = 1
        }
    }
    return ret
}