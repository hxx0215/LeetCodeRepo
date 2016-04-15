func minPathSum(grid: [[Int]]) -> Int {
    var ret = grid
    for i in 0..<grid.count{
        for j in 0..<grid[i].count{
            let left = i > 0 ? ret[i-1][j] : Int.max
            let up  = j > 0 ? ret[i][j-1] : Int.max
            if i == 0 && j == 0{
                ret[i][j] = grid[i][j]
            }else{
                ret[i][j] = min(left, up)+grid[i][j]
            }
        }
    }
    return (ret.last?.last)!
}