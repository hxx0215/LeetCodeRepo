
func isBalanced(root: TreeNode?) -> Bool {
    return treeDepth(root) >= 0
}

func treeDepth(root: TreeNode?) -> Int{
    if let r = root{
        let left = treeDepth(r.left)
        let right = treeDepth(r.right)
        if (left < 0)||(right < 0){
            return -1
        }
        if abs(right - left) > 1{
            return -1
        }else{
            return max(left, right) + 1
        }
    }else{
        return 0
    }
}