func convert(s: String, _ numRows: Int) -> String {
    var zigzag = [[Character]]()
    var column = 0
    var step = 0
    for _ in 0..<numRows{
        zigzag.append([Character]())
    }
    for ch in s.characters{
        column = column + step
        if column == 0{
            step = 1
        }
        if column == numRows - 1{
            step = -1
        }
        if numRows == 1 {
            step = 0
        }
        zigzag[column].append(ch)
    }
    return zigzag.map { (array) -> String in
        return String(array)
    }.reduce("") { (res, st) -> String in
        return res+st
    }
}