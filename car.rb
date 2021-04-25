class Car
    def initialize(car_color)#インスタンスができた時にすぐ実行
        @color = car_color
    end

    def show_color
        p @color
    end

    def accele#define。関数の定義→機能の追加.インスタンスが違うくても機能は共通。
        p "アクセルを踏みました"
    end

    def run(speed)
        p "#{speed}km/hで走ります"
    end

    def show_speed
        p speed
    end

end#車クラスを定義

#呼び出す部分
car = Car.new("black")#car_color=black
car.run(300)
car.show_speed
