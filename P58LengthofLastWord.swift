func lengthOfLastWord(s: String) -> Int {
    let arr = s.characters.split(" ").map(String.init)
    if let last = arr.last{
        return last.characters.count
    }
    return 0
}