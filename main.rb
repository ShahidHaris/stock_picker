def stock_picker(stock_prices)
    #making a copy of the stock_prices
    cloned = stock_prices.dup

    #getting the days buying and selling
    def days_of_exchange(days)
        index = days.each_with_index.to_A
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

    
end