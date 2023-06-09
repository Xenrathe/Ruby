def stock_picker(prices)
  maxVal = 0
  bestFirst = 0
  bestSecond = 0
  for firstDay in 0..(prices.count-1)
    for secondDay in firstDay..(prices.count-1)
      if prices[secondDay] - prices[firstDay] > maxVal
        bestFirst = firstDay
        bestSecond = secondDay
        maxVal = prices[secondDay] - prices[firstDay]
      end
    end
  end
  day_pair = [bestFirst, bestSecond]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])