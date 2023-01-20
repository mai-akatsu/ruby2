puts "じゃんけん......"

class Jantai
    
def janken
    @case_pattern = ""
    
puts "[0]グー [1]チョキ [2]パー [3]戦わない"

player_choice = gets.to_i
computer_choice = rand(3)

jankens = ["グー","チョキ","パー","戦わない"]

puts "ホイ！"
puts "----------------------------------"

puts "あなた:#{jankens[player_choice]}を出しました"
puts "相手:#{jankens[computer_choice]}を出しました"


if player_choice == computer_choice
   
    puts "あいこで......"
    return janken
    
elsif (player_choice == 0 && computer_choice == 1) ||
      (player_choice == 1 && computer_choice == 2) ||
      (player_choice == 2 && computer_choice == 0) 
      @case_pattern = "win"
      puts"じゃんけんに勝ちました。あっちむいて・・・"
      return attimuite
      

elsif (player_choice == 1 && computer_choice == 0) ||
      (player_choice == 2 && computer_choice == 1) ||
      (player_choice == 0 && computer_choice == 2)
      @case_pattern = "lose"
      puts"じゃんけんに負けました。あっちむいて・・・"
      return attimuite
else
    puts "戦いませんさようなら〜"
    exit
end
end

def attimuite

puts "----------------------------------"
puts "[0]上 [1]下 [2]右 [3]左"

player_choice = gets.to_i
computer_choice = rand(4)

jankens = ["上","下","右","左"]

puts "ホイ！"

puts "あなた:#{jankens[player_choice]}"
puts "相手:#{jankens[computer_choice]}"
      
if player_choice == computer_choice && @case_pattern == "win"
    puts "あなたの勝ちです！"
    exit
elsif player_choice == computer_choice && @case_pattern == "lose"
    puts "あなたの負けです！"
    exit
else
    puts "もう一回だ！"
    return janken 
end
end
end

name = Jantai.new()

name.janken()
name.attimuite()