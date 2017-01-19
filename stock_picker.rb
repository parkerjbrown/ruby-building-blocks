def stock_picker(prices)
  max_profit = 0
  ideal_days = []
  ideal_prices = []

  prices.each_with_index do |price, index|
    buy_price = price
    buy_day = index

    sell_price = prices[(index + 1)..prices.length].max
    sell_day = prices.index(sell_price)

    profit = sell_price.to_i - buy_price.to_i

    if profit > max_profit
      max_profit = profit
      ideal_days = [buy_day, sell_day]
      ideal_prices = [buy_price, sell_price]
    end
  end

  puts "Maximum Profit: $#{max_profit} [BUY: Day #{ideal_days[0]} ($#{ideal_prices[0]}) | SELL: Day #{ideal_days[1]} ($#{ideal_prices[1]})]"
end

stock_picker([17,3,6,9,15,8,6,1,10])