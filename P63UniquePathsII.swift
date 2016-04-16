func uniquePathsWithObstacles(obstacleGrid: [[Int]]) -> Int {
    var ans = [[Int]]()
    var last = 0
    for i in 0..<obstacleGrid.count{
        ans.append([Int]())
        for j in 0..<obstacleGrid[i].count{
            ans[i].append(0)
            if obstacleGrid[i][j] == 1{
                ans[i][j] = 0
            }else if i*j == 0{
                if i==0 && j == 0{
                    ans[i][j] = 1
                }else if i == 0 {
                    ans[i][j] = ans[i][j-1]
                }else if j == 0{
                    ans[i][j] = ans[i-1][j]
                }
            }else{
                ans[i][j] = ans[i][j-1] + ans[i-1][j]
            }
            last = ans[i][j]
        }
    }
    return last
}