
func minDepth(root: TreeNode?) -> Int {
    if let r = root{
        if r.left == nil{
            return minDepth(r.right) + 1
        }
        if r.right == nil{
            return minDepth(r.left) + 1
        }
        return min(minDepth(r.left), minDepth(r.right)) + 1
    }else{
        return 0
    }
    
}