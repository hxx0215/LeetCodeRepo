
func longestCommonPrefix(strs: [String]) -> String {
    if strs.count < 1{
        return ""
    }
    var minIndex = 0
    var minLength = strs[0].characters.count
    for (index,str) in strs.enumerate(){
        if str.characters.count < minLength{
            minIndex = index
            minLength = str.characters.count
        }
    }
    var len = -1
    for i in 0..<minLength{
        let cmp = strs[minIndex][strs[minIndex].startIndex.advancedBy(i)]
        for j in 0..<strs.count{
            if strs[j][strs[j].startIndex.advancedBy(i)] != cmp{
                len = i
                break
            }
        }
        if len != -1{
            break
        }
    }
    if len == -1{
        len = minLength
    }
    return strs[minIndex].substringToIndex(strs[minIndex].startIndex.advancedBy(len))
}