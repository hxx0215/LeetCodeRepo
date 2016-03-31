func permute(nums: [Int]) -> [[Int]] {
    var ans = [[Int]]()
    var recur : ([Int],[Int]) -> () = {cur,tail in}
    recur = {cur,tail in
        if tail.count == 0{
            ans.append(cur)
            return
        }
        for (index,i) in tail.enumerate(){
            var next = tail
            next.removeAtIndex(index)
            var nextCur = cur
            nextCur.append(i)
            recur(nextCur,next)
        }
    }
    recur([Int](),nums)
    return ans
}
