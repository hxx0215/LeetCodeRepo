func intersect(nums1: [Int], _ nums2: [Int]) -> [Int] {
    var n1 = nums1
    return nums2.filter({ (num) -> Bool in
        defer{
            if n1.contains(num){
                n1.removeAtIndex(n1.indexOf(num)!)
            }
        }
        return n1.contains(num)
    })
}