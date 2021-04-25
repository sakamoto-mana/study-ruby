for i in 1..100
    if i%15==0 then #i/15あまりないとき
        num="fizzbuzz"
    elsif i%3==0 then #i/3あまりなしのとき
        num="fizz"
    elsif i%5==0 then #i/5あまりなしのとき
        num="buzz"
    else
        num=i
    end
    p num
end