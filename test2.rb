class Player
 def hand
   puts "数字を入力してください"
   puts "0:グー"
   puts "1:チョキ"
   puts "2:パー"
   player_hand = gets.chomp
   if player_hand == "0" || player_hand == "1" || player_hand == "2"
     player_hands = player_hand.to_i
   else
     puts "0〜2の数字を入力"
     Player.new.hand
   end
 end
end

#player = Player.new
class Enemy
  def hand
    return rand(3).to_i
  end
end

#出力した値
#enemy = Enemy.new
#puts enemy.hand

class Janken
  def pon(player_hand, enemy_hand)
    if enemy_hand == 0
  	   enemy = "グー"
  	elsif enemy_hand == 1
  	   enemy = "チョキ"
  	elsif enemy_hand == 2
  	   enemy = "パー"
  	end
  	  number = (player_hand - enemy_hand + 3) % 3
  	if number == 2
  	   puts "相手の手は#{enemy}です。あなたの勝ちです。"
  	elsif number == 1
  	   puts "相手の手は#{enemy}です。あなたの負けです。"
  	else
  	   puts "相手の手は#{enemy}です。あいこです。"
  	return "again"
  	end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new


while janken.pon(player.hand, enemy.hand) do
  again = janken
end


#(player_hand - enemy_hand + 3)%3

  #    class Player
  #def hand
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
#  end
#end

#class Enemy
#  def hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
#  end
#end

#class Janken
#  def pon(player_hand, enemy_hand)
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
#  end
#end

#player = Player.new
#enemy = Enemy.new
#janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
#janken.pon(player.hand, enemy.hand)
