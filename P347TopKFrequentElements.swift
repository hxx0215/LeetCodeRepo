func topKFrequent(nums: [Int], _ k: Int) -> [Int] {
    var dic = [Int:Int] ()
    nums.forEach { (num) in
        if let a = dic[num]{
            dic[num] = a + 1
        }else{
            dic[num] = 1
        }
    }
    return Array(dic.map { (idx,value) -> (Int,Int) in
        return (idx,value)
    }.sort { (a, b) -> Bool in
        return a.1 > b.1
    }.map({ (a,_) -> Int in
        return a
    }).prefix(k))
}