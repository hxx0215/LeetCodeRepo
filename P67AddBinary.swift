
func addBinary(a: String, _ b: String) -> String {
    let str2Int:(String) -> [Int] = { str in
        return str.characters.reverse().map({ (ch) -> Int in
            if ch == "1"{
                return 1
            }else{
                return 0
            }
        })
    }
    var arr = str2Int(a.characters.count > b.characters.count ? a:b)
    var brr = str2Int(a.characters.count > b.characters.count ? b:a)
    for i in 0..<min(arr.count,brr.count) {
        arr[i] = arr[i] + brr[i]
    }
    for i in 0..<arr.count - 1{
        arr[i+1] += arr[i] / 2
        arr[i] = arr[i] % 2
    }
    if let _ = arr.last{
        while arr.last! > 1{
            let ap = arr.last! / 2
            arr[arr.count - 1] = arr.last! % 2
            arr.append(ap)
        }
    }
    return arr.reverse().reduce("") { (ch, i) -> String in
        return ch + "\(i)"
    }
}