class Animal
    def initialize(leg=4,tail=true)
        @leg = leg
        @tail = tail
    end

    def show_prop
        if @tail then#@tailがtrueのとき実行
            p "足は#{@leg}本で，尻尾はあります。"
        elsif !@tail then#@tailがfalseのとき実行
            p "足は#{@leg}本で，尻尾はありません。"
        else
            p "足は#{@leg}本で，尻尾はありません。"
        end
    end

    def run
       p "走る"
    end

    def burk
        p "鳴く"
     end
end

class Dog<Animal
    def initialize(personal)
        @personal=personal
    end

    def show_prop
        p @personal
    end

    def burk(num)
        i=0
        while i <= num do
            p "わん"
            i += 1
        end
    end

    def count(num)
        (1..num).each do |i|
             p i
        end
    end

end

class Cat<Animal
    def jump
        p "ジャンプします"
    end

    def burk
        p "にゃーにゃ―"
    end
end

#animal = Animal.new(leg=4,tail=false)
#animal.show_prop
##dog = Dog.new(personal="従順")
##dog.burk(5)
#dog.count(10)

def count(num)
    for i in 1..num
        p i
    end
end

count(5)

