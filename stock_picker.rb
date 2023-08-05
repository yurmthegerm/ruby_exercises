def stock_picker(prices)
    profit = 0
    bought, sold = 0
    prices.each_with_index do |buy, buy_ind|
        prices[buy_ind+1..].each_with_index do |sell, sell_ind|
            difference = sell - buy
            if difference > profit
                profit = difference
                bought = buy_ind
                sold = sell_ind+buy_ind+1
            end
        end
    end
    return [bought, sold]
end

p stock_picker([17,3,6,9,15,8,6,1,10])