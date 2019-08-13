class Player
  def hand
    puts '数字を入力してください', '0: グー', '1: チョキ', '2: パー', ''
    puts '最初はグー、ジャンケン...'
    gets.chomp
  end
end

class Enemy
  def hand
    rand(3).to_s
  end
end

class Janken
  def pon(player, enemy)
    hands = { '0' => 'グー', '1' => 'チョキ', '2' => 'パー' }
    player_hand = ''
    enemy_hand = ''

    loop do
      player_hand = player.hand
      enemy_hand = enemy.hand
      puts '', "player: #{hands[player_hand]}", "enemy: #{hands[enemy_hand]}", ''

      if !(player_hand == '0' || player_hand == '1' || player_hand == '2')
        puts '不正な値が入力されました。0〜2の数字を入力してください', ''
      elsif player_hand == enemy_hand
        puts 'あいこです、もう一回！', ''
      else
        break
      end
    end

    if (player_hand.to_i - enemy_hand.to_i + 3) % 3 == 2
      puts 'あなたの勝ちです！'
    else
      puts 'あなたの負けです...'
    end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

janken.pon(player, enemy)
