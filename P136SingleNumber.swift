func singleNumber(nums: [Int]) -> Int {
    return nums.reduce(0, combine: ^)
}
