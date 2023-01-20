def janken
attimuite = ""

puts "じゃんけん......"

puts "[0]グー [1]チョキ [2]パー [3]戦わない"

player_hand = gets.to_i
computer_hand = rand(3)

jankens = ["グー","チョキ","パー","戦わない"]

puts "ホイ！"

puts "あなた:#{jankens[player_hand]}を出しました"
puts "相手:#{jankens[computer_hand]}を出しました"


if player_hand == computer_hand
   
    puts "あいこで......"
    return true
elsif (player_hand == 0 && computer_hand == 1) ||
      (player_hand == 1 && computer_hand == 2) ||
      (player_hand == 2 && computer_hand == 0) 
      puts"じゃんけんに勝ちました。あっちむいて・・・"
      attimuite = "jankati"

elsif (player_hand == 1 && computer_hand == 0) ||
      (player_hand == 2 && computer_hand == 1) ||
      (player_hand == 0 && computer_hand == 2)
      puts"じゃんけんに負けました。あっちむいて・・・"
      attimuite = "janmake"
else
    puts "戦いませんさようなら〜"
end

case attimuite
when "jankati"
    puts "[0]上 [1]下 [2]左 [3]右"
    
      player_direction = gets.to_i
　　  computer_direction = rand(3)

　　  directions = ["上","下","左","右"]
　　
　　  puts "ホイ！"

      puts "あなた:#{directions[player_direction]}"
      puts "相手:#{directions[computer_direction]}"
      
    if player_direction == computer_direction
    puts "あなたの勝ちです！"
　　else
    puts "あなたの負けです！"
    end
    
when "janmake"
      puts "[0]上 [1]下 [2]左 [3]右"
      
      player_yubi = gets.to_i
　　  computer_yubi = rand(3)

　　  direct = ["上","下","左","右"]
　　
　　  puts "ホイ！"

      puts "あなた:#{direct[player_yubi]}"
      puts "相手:#{direct[computer_yubi]}"
      
    if player_yubi == computer_yubi
    puts "あなたの負けです！"
　　else
    puts "あなたの勝ちです！"
    end
end   
end

next_game = true

while next_game
  next_game = janken
end


    


