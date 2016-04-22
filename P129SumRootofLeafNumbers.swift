func sumNumbers(root: TreeNode?) -> Int {
    var sumRoot: (TreeNode?,Int) -> () = {r,n in }
    var res = 0
    sumRoot = { r,currentNum in
        guard let rt = r else {
            return
        }
        let curVal = currentNum*10 + rt.val
        if rt.left == nil && rt.right == nil {
            res += curVal
        }else{
            if let l = rt.left {
                sumRoot(l,curVal)
            }
            if let right = rt.right{
                sumRoot(right,curVal)
            }
        }
    }
    sumRoot(root,0)
    return res
}