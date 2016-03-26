func appendZero(inout a:[Int],n: Int){
    for _ in 0..<n{
        a.append(0)
    }
}
func compareVersion(version1: String, _ version2: String) -> Int {
    var v1s = version1.characters.split(".").map { (chs) -> Int in
        return Int(String(chs))!
    }
    var v2s = version2.characters.split(".").map { (chs) -> Int in
        return Int(String(chs))!
    }
    if v1s.count<v2s.count{
        appendZero(&v1s, n: v2s.count - v1s.count)
    }
    if v1s.count>v2s.count{
        appendZero(&v2s, n: v1s.count - v2s.count)
    }
    
    for i in 0..<min(v1s.count, v2s.count){
        if v1s[i] < v2s[i]{
            return -1
        }
        if v1s[i] > v2s[i]{
            return 1
        }
    }
    return 0
}
