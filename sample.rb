class Player
  def hand
    puts '数字を入力してください', '0: グー', '1: チョキ', '2: パー'
    gets.to_i
  end
end

class Enemy
  def hand
    rand(3)
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、
    # その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる

  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

# player.hand
p enemy.hand
# janken.pon(player.hand, enemy.hand)
