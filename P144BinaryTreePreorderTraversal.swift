func preorderTraversal(root: TreeNode?) -> [Int] {
    var ret = [Int]()
    var preoder : (r:TreeNode?) -> () = {r in}
    preoder = {
        r in
        if r != nil{
            ret.append(r!.val)
            preoder(r: r!.left)
            preoder(r: r!.right)
        }
    }
    preoder(r: root)
    return ret
}