class Yusha
    def initialize(hpY,attackY,difenceY,speedY)
        $hpY = hpY
        $attackY = attackY
        $difenceY = difenceY
        $speedY = speedY
    end

    def show_prop
        puts "勇者information\n ●HP:#{$hpY}\n ●攻撃力:#{$attackY}\n ●守備力:#{$difenceY}\n ●スピード:#{$speedY}"
    end

    def fight
        puts "\n戦います"

        if $speedY < $speedE then#敵先攻
            puts "＜敵が先攻です＞" 
            i=1#iが奇数のとき敵のターン，偶数の時勇者のターン
        elsif $speedY > $speedE then#勇者先攻
            puts "＜勇者が先攻です＞" 
            i=2
        end
        
        hpY_fight=$hpY
        hpE_fight=$hpE
            
        while hpY_fight>0 && hpE_fight>0 do
            if i%2==1 then#奇数の時。敵のターン
                $damegeY = $attackE - $difenceY#敵が攻撃したときの勇者のダメージ
                hpY_fight = hpY_fight -$damegeY
                puts "敵の攻撃ターン\n  勇者㏋:#{hpY_fight} 敵HP:#{hpE_fight}"
            else#勇者のターン
                $damegeE = $attackY - $difenceE#勇者が攻撃したときの敵のダメージ
                hpE_fight = hpE_fight -$damegeE
                puts "勇者の攻撃ターン\n  勇者㏋:#{hpY_fight} 敵HP:#{hpE_fight}"
            end
            i = i + 1
        end

        if hpY_fight<=0 then
            puts "勇者の負けです"
        elsif hpE_fight<=0 then
            puts "敵の負けです"
        end
    end
end

class Teki
    def initialize(hpE,attackE,difenceE,speedE)
        $hpE = hpE
        $attackE = attackE
        $difenceE = difenceE
        $speedE = speedE
    end

    def show_prop
        puts "\n敵information\n ●HP:#{$hpE}\n ●攻撃力:#{$attackE}\n ●守備力:#{$difenceE}\n ●スピード:#{$speedE}"
    end
end

yusha = Yusha.new(hpY=300,attackY=30,difenceY=10,speedY=100)
teki=Teki.new(hpE=200,attackE=70,difenceE=5,speedE=150)
yusha.show_prop
teki.show_prop
yusha.fight