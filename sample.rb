class Player
  def hand
    puts "数字を入力してください"
    puts "0:グー"
    puts "1:チョキ"
    puts "2:パー"
  #コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を処理するメソッドをこの中に作成する
    #グー、チョキ、パーの値をランダムに出力する値のメソッド
    player_hand = gets.chomp
    if player_hand == "0" || player_hand == "1" || player_hand == "2"
      player_hands = player_hand.to_i
    else               #0,1,2以外の数字の場合
      puts "0〜2の数字を入力"
      Player.new.hand
    end
  end
 end

 class Enemy
   def hand
     return rand(3).to_i
   end
 end

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

# 下記の記述で、ジャンケンメソッドが起動される
while janken.pon(player.hand, enemy.hand) do
  again = janken
end

#① player = Player.newの記述の意味
#クラスPlayerをメソッドでインスタンス化したものをplayerに代入
#② 大文字のPlayerと小文字のplayerの違い
#大文字はクラス、小文字の方はクラスPlayerをインスタンス化して代入の変数

#次に、以下の出力になるようにジャンケンゲームプログラムを作ってください。
#$ ruby sample.rb
#数字を入力してください。
#0: グー
#1: チョキ
#2: パー


#数字の0をグー、1をチョキ、2をパーとみなす処理にすること
#相手の手はランダムで、あいこの場合は繰り返し勝負をする処理であること
#0〜2以外の入力時はジャンケンできない処理内容であること
#（「0〜2の数字を入力してください。」と出力し、あいこの時と同様に繰り返し勝負を行う）
#プログラムのメソッドは、インスタンスメソッドの形で定義すること
