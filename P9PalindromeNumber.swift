func isPalindrome(x: Int) -> Bool {
    let str = "\(x)"
    for i in 0..<str.characters.count{
        let rev = str.characters.reverse()
        let l = str[str.characters.startIndex.advancedBy(i)]
        let r = rev[rev.startIndex.advancedBy(i)]
        if l != r {
            return false
        }
    }
    return true
}