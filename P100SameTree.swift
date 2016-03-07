public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
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