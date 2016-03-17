func strStr(haystack: String, _ needle: String) -> Int {
    if haystack == needle {
        return 0
    }
    if needle == ""{
        return 0
    }
    if let range = haystack.rangeOfString(needle){
        return haystack.characters.startIndex.distanceTo(range.startIndex)
    }else{
        return -1
    }
}
