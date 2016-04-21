func maxProfit(prices: [Int]) -> Int {
    var minPrice = Int.max
    return prices.reduce(0, combine: { (ret, price) -> Int in
        minPrice = min(minPrice, price)
        return max(price - minPrice, ret)
    })
}