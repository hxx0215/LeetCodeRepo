 func isSymmetric(root: TreeNode?) -> Bool {
    let mirror = copyTree(root)
    return isSameTree(root, mirrorTree(mirror))
    
 }
 
 func mirrorTree(root: TreeNode?) -> TreeNode?{
    guard let r = root else{
        return nil
    }
    let temp = r.left
    r.left = r.right
    r.right = temp
    mirrorTree(r.left)
    mirrorTree(r.right)
    return root
 }
 
 func isSameTree(p: TreeNode?, _ q: TreeNode?) -> Bool {
    if let pp = p,qq = q {
        if pp.val == qq.val{
            return isSameTree(pp.left, qq.left) && isSameTree(pp.right, qq.right)
        }else{
            return false
        }
    }else{
        if (p == nil)&&(q == nil){
            return true
        }else{
            return false
        }
    }
 }
 func copyTree(root: TreeNode?) -> TreeNode? {
    guard let r = root else{
        return nil
    }
    let ret = TreeNode(r.val)
    ret.left = copyTree(r.left)
    ret.right = copyTree(r.right)
    return ret
 }