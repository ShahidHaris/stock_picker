def stock_picker(prices)
    #making a copy of the stock_prices
    cloned = prices.dup

    #getting the days buying and selling
    def days_of_exchange(days)
        index = days.each_with_index.to_a
        answer = []
        index.dup.map do |buy|
            temp = []
            index.map do |sell|
              temp.push([buy[1], sell[1]])  
            end
            answer.push(temp)
            index.shift
            answer
        end
    end

    #getting the returns from the exchange
    def stock_returns(values)
        values.dup.map do |buy|
            result = values.map { |sell| sell - buy }
            values.shift
            result
        end
    end

    days_combination = days_of_exchange(prices)[0].flatten(1)
    returns = stock_returns(prices).flatten
    max_return = returns.max 
    best_days = days_combination[returns.find_index(max_return)]

    suggestion = "#{best_days} # for profit of $#{cloned[best_days[1]]} - $#{cloned[best_days[0]]} == $#{max_return}"

end

array = stock_picker([17,3,6,9,15,8,6,1,10])