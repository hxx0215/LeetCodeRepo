func isIsomorphic(s: String, _ t: String) -> Bool {
    var same: (String,String) -> Bool = {
        str1,str2 in
        return false
    }
    same = {
        s,t in
        var dic  = [Character:Character]()
        var r = [Character]()
        for (idx,ch) in s.characters.enumerate(){
            if let cont = dic[ch]{
                r.append(cont)
            }else{
                let tar = t.characters[t.startIndex.advancedBy(idx)]
                dic[ch] = tar
                r.append(tar)
            }
        }
        return String(r) == t
    }
    return same(s,t)&&same(t,s)
}