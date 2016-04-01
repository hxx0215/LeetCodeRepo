func titleToNumber(s: String) -> Int {
    return s.unicodeScalars.reduce(0, combine: { (res, ch) -> Int in
        return res * 26 + Int(ch.value) - 64
    })
}
