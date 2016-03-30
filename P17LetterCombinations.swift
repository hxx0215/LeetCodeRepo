func letterCombinations(digits: String) -> [String] {
    let phonemap = ["1":["1"],
                    "2":["a","b","c"],
                    "3":["d","e","f"],
                    "4":["g","h","i"],
                    "5":["j","k","l"],
                    "6":["m","n","o"],
                    "7":["p","q","r","s"],
                    "8":["t","u","v"],
                    "9":["w","x","y","z"],
                    "0":["0"]]
    var ans = [String]()
    var recur : (Int,String) -> () = {ind,str in}
    recur = { ind,str in
        if ind >= digits.characters.count{
            ans.append(str)
            return
        }
        let nextNumber = String(digits.characters[digits.characters.startIndex.advancedBy(ind)])
        for ch in phonemap[nextNumber]!{
            recur(ind+1,str+ch)
        }
    }
    if (digits.characters.count > 0){
        recur(0,"")
    }
    return ans
}