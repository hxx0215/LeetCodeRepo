func rob(nums: [Int]) -> Int {
    var f: [Int] = []
    for (idx,num) in nums.enumerate(){
        let base1 = idx > 0 ? f[idx - 1]:0
        let base2 = idx > 1 ? f[idx - 2]:0
        f.append(max(base1, base2+num))
    }
    if nums.count > 0{
        return f[nums.count - 1]
    }else {
        return 0
    }
}