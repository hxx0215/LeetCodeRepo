func isAnagram(s: String, _ t: String) -> Bool {
    var dic = [Character: Int]()
    if s.characters.count != t.characters.count {
        return false
    }
    for ch in s.characters{
        if let v = dic[ch]{
            dic[ch] = dic[ch]! + 1
        }else{
            dic[ch] = 1
        }
    }
    for ch in t.characters{
        if let v = dic[ch]{
            dic[ch] = dic[ch]! - 1
            if dic[ch] < 0 {
                return false
            }
        }else{
            return false
        }
    }
    return true
}

