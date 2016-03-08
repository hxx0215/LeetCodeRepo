
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
func maxDepth(root: TreeNode?) -> Int {
    if let r = root {
        return max(maxDepth(r.left), maxDepth(r.right)) + 1
    }else{
        return 0
    }
}