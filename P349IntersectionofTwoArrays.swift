func intersection(nums1: [Int], _ nums2: [Int]) -> [Int] {
    let n1 = Set(nums1)
    let n2 = Set(nums2)
    let n3 = n1.intersect(n2)
    return n3.map{return $0}
}