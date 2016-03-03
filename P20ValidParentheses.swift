func isValid(s: String) -> Bool {
    var stack = [Character]()
    let check: (Character) -> Bool = { checkCh in
        if let ch = stack.popLast() where ch == checkCh{
            return true
        }
        return false
    }
    for ch in s.characters{
        let pushSet:Set<Character> = ["(","[","{"]
        if pushSet.contains(ch){
            stack.append(ch)
        }else{
            switch ch{
            case ")":
                if check("(") {
                    continue
                }else{
                    return false
                }
            case "]":
                if check("["){
                    continue
                }else{
                    return false
                }
            case "}":
                if check("{"){
                    continue
                }else{
                    return false
                }
            default:
                break
            }
        }
    }
    return stack.count == 0
}

