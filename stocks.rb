def stock_picker(stocks)
	profit = stocks[1] - stocks.first
	dates = [0,1]
	stocks.each_with_index do |b_price, b_day|
		(b_day...stocks.length).each_with_index do |s_day|
			s_price = stocks[s_day]
			if (s_price - b_price) > profit
				profit = s_price - b_price
				dates = [b_day, s_day]
			end
		end
	end
	return dates
end

puts(stock_picker([17,3,6,9,15,8,6,1,10]))