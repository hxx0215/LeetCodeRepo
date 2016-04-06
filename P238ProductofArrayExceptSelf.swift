func productExceptSelf(nums: [Int]) -> [Int] {
    let pro = nums.reduce(1, combine: *)
    var count = 0
    let prowithoutzero = nums.reduce(1) { (combine, num) -> Int in
        if num == 0{
            count += 1
            return combine
        }else{
            return combine*num
        }
    }
    return nums.map({ (num) -> Int in
        if count > 1{
            return 0
        }
        if num == 0{
            return prowithoutzero
        }
        return pro / num
    })
}
