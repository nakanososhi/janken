require "csv"



def janken
puts "最初はグー！"
puts "じゃんけん...
0(グー) 1(チョキ) 2(パー) 3(戦わない)"
facing_over_there = ["上","下","右","左"]

player_hands = gets.to_i
program_hands = rand(3)
puts "ホイ！"
puts "----------------------------------------"


# 自分がグーを出した時
if player_hands == 0 && program_hands == 1
  puts "あなた：グーを出しました"
  puts "相手：チョキを出しました"
  puts "----------------------------------------"
 
  puts "あっちむいて....
  指を指す方向を選んでください。
  0(上) 1(下) 2(右) 3(左)"
  
  player_finger = gets.to_i
  program_face = rand(4)
  puts "ホイ！
  ---------------------------------------------"
  puts "あなた：#{facing_over_there[player_finger]}"
  puts "あいて：#{facing_over_there[program_face]}"
  
      if player_finger == program_face
        puts "あなたの勝ちです"
      else 
        puts "引き分け"
        puts "---------------------------------------"
        return true
      end

  
elsif
  player_hands == 0 && program_hands == 2
  puts "あなた：グーを出しました"
  puts "相手：パーを出しました"
  puts "----------------------------------------"
  
 puts "あっちむいて....
 顔を向く方向を選んでください。
 0(上) 1(下) 2(右) 3(左)"

  player_face = gets.to_i
  program_finger = rand(4)
  puts "ホイ！
  -----------------------------------------------"
  puts "あなた：#{facing_over_there[player_face]}"
  puts "あいて：#{facing_over_there[program_finger]}"

    if player_face == program_finger
      puts "あなたの負けです"
    else 
      puts "引き分け"
      puts "---------------------------------------"
      return true
    end
  
elsif 
  player_hands == 0 && program_hands == 0
  puts "あなた：グーを出しました"
  puts "相手：グーを出しました"
  puts "あいこです"
  puts "----------------------------------------"
  return true
    
  
# 自分がチョキを出した時
elsif player_hands == 1 && program_hands == 2
  puts "あなた：チョキを出しました"
  puts "あいて：パーを出しました"
  puts "----------------------------------------"
  
  puts "あっちむいて....
  指を指す方向を選んでください。
  0(上) 1(下) 2(右) 3(左)"
  
  player_finger = gets.to_i
  program_face = rand(4)
  puts "ホイ！
  ---------------------------------------------"
  puts "あなた：#{facing_over_there[player_finger]}"
  puts "あいて：#{facing_over_there[program_face]}"
  
      if player_finger == program_face
        puts "あなたの勝ちです"
      else 
        puts "引き分け"
        puts "---------------------------------------"
        return true
      end
  
elsif  player_hands == 1 && program_hands == 0
  puts "あなた：チョキを出しました"
  puts "あいて：グーを出しました"
  puts "----------------------------------------"
  
  puts "あっちむいて....
  顔を向く方向を選んでください。
  0(上) 1(下) 2(右) 3(左)"

  player_face = gets.to_i
  program_finger = rand(4)
  puts "ホイ！
  -----------------------------------------------"
  puts "あなた：#{facing_over_there[player_face]}"
  puts "あいて：#{facing_over_there[program_finger]}"

    if player_face == program_finger
      puts "あなたの負けです"
    else 
      puts "引き分け"
      puts "---------------------------------------"
      return true
    end
  
elsif player_hands == 1 && program_hands == 1
  puts "あなた：チョキを出しました"
  puts "あいて：チョキをを出しました"
  puts "あいこです"
  puts "----------------------------------------"
  return true

# 自分がパーを出した時
elsif player_hands == 2 && program_hands == 0
  puts "あなた：パーを出しました"
  puts "あいて：グーを出しました"
  puts "----------------------------------------"
  
  puts "あっちむいて....
  指を指す方向を選んでください。
  0(上) 1(下) 2(右) 3(左)"

  player_finger = gets.to_i
  program_face = rand(4)
  puts "ホイ！
  ---------------------------------------------"
  puts "あなた：#{facing_over_there[player_finger]}"
  puts "あいて：#{facing_over_there[program_face]}"

    if player_finger == program_face
      puts "あなたの勝ちです"
    else 
      puts "引き分け"
      puts "---------------------------------------"
      return true
    end
  
elsif player_hands == 2 && program_hands == 1
  puts "あなた：パーを出しました"
  puts "あいて：チョキを出しました"
  puts "----------------------------------------"
  
  puts "あっちむいて....
  顔を向く方向を選んでください。
  0(上) 1(下) 2(右) 3(左)"

  player_face = gets.to_i
  program_finger = rand(4)
  puts "ホイ！
  -----------------------------------------------"
  puts "あなた：#{facing_over_there[player_face]}"
  puts "あいて：#{facing_over_there[program_finger]}"

    if player_face == program_finger
      puts "あなたの負けです"
    else 
      puts "引き分け"
      puts "---------------------------------------"
      return true
    end
  
elsif player_hands == 2 && program_hands == 2
  puts "あなた：パーを出しました"
  puts "あいて：パーを出しました"
  puts "あいこです"
  puts "----------------------------------------"
  return true
  
  
elsif player_hands == 3
  puts "平和主義ですね"
  puts "----------------------------------------"
else
  puts "プログラムを終了します"
end
end

next_game = true

while next_game
  next_game = janken
end