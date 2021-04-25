class Character
    def initialize(hpY,attackY,difenceY,speedY,hpE,attackE,difenceE,speedE)
        @hpY = hpY
        @attackY = attackY
        @difenceY = difenceY
        @speedY = speedY
        @hpE = hpE
        @attackE = attackE
        @difenceE = difenceE
        @speedE = speedE

        @damegeY = @attackE - @difenceY#敵が攻撃したときの勇者のダメージ
        @damegeE = @attackY - @difenceE#勇者が攻撃したときの敵のダメージ
    end

    def show_prop
        puts "勇者information\n ●HP:#{@hpY}\n ●攻撃力:#{@attackY}\n ●守備力:#{@difenceY}\n ●スピード:#{@speedY}"
        puts "\n敵information\n ●HP:#{@hpE}\n ●攻撃力:#{@attackE}\n ●守備力:#{@difenceE}\n ●スピード:#{@speedE}"
    end


    def fight
        puts "\n戦います"

        if @speedY < @speedE then#敵先攻
            puts "＜敵が先攻です＞" 
            i=1#iが奇数のとき敵のターン，偶数の時勇者のターン
        elsif @speedY > @speedE then#勇者先攻
            puts "＜勇者が先攻です＞" 
            i=2#iが奇数のとき敵のターン，偶数の時勇者のターン   
        end
        
        hpY_fight=@hpY
        hpE_fight=@hpE
            
        while hpY_fight>0 && hpE_fight>0 do
            if i%2==1 then#奇数の時。敵のターン
                hpY_fight = hpY_fight - @damegeY
                puts "敵の攻撃ターン\n  勇者㏋:#{hpY_fight} 敵HP:#{hpE_fight}"
            else#勇者のターン
                hpE_fight = hpE_fight - @damegeE
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

character = Character.new(hpY=300,attackY=30,difenceY=10,speedY=100,hpE=200,attackE=20,difenceE=5,speedE=50)
character.show_prop
character.fight



