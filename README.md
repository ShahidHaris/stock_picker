# stock_picker is a project, part of the odin project curriculm for the full stack web development for ruby on rails.

# pseudo_code
    The idea is to take an array of stock prices, each for a specific day, starting from day 0.The aim is to return the best day to buy and sell the stock, i.e the days combination with the highest profit. So, to achieve that:
    -The combination of days should be computed accurately. Error cases were one buys and sell the previous day should be avoided, because we're on living in a fantasy world of time travel.
    -The cost of buying and selling the stock should be examined to figure out the combination with the maximum profit.
    -Then the best day combination and the amount of profit should be return to help make the best decison.