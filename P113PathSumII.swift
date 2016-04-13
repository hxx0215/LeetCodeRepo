func pathSum(root: TreeNode?, _ sum: Int) -> [[Int]] {
    var ret = [[Int]]()
    var generate : (TreeNode?,Int,[Int]) -> () = {
        r,sum,cur in
    }
    generate = {r,sum,cur in
        if let rt = r{
            var next = cur
            next.append(rt.val)
            if sum - rt.val == 0{
                if (rt.left == nil)&&(rt.right == nil){
                    ret.append(next)
                }
            }
            generate(rt.left,sum - rt.val,next)
            generate(rt.right,sum - rt.val,next)
        }
    }
    generate(root,sum,[Int]())
    return ret
}