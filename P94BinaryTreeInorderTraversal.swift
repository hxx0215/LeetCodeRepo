func inorderTraversal(root: TreeNode?) -> [Int] {
    var ret = [Int]()
    var inoder : (r:TreeNode?) -> () = {r in}
    inoder = {
        r in
        if r != nil{
            inoder(r: r!.left)
            ret.append(r!.val)
            inoder(r: r!.right)
        }
    }
    inoder(r: root)
    return ret
}