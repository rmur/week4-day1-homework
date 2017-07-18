class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
   end

  def play()
    if @hand1 == "Rock"
      if @hand2 == "Rock"
        return"Draw"
      elsif @hand2 == "Scissors"
        return "Player 1 by playing Rock wins"
      else @hand2 == "Paper"
        return "Player 2 by playing paper wins"
      end
    end

    if @hand1 == "Paper"
      if @hand2 == "Paper"
        return"Draw"
      elsif @hand2 == "Scissors"
        return "Player 2 by playing scissors wins"
      else @hand2 == "Rock"
        return "Player 1 by playing Paper wins"
      end
    end

    if @hand1 == "Scissors"
      if @hand2 == "Scissors"
        return"Draw"
      elsif @hand2 == "Rock"
        return "Player 2 by playing rock wins"
      else @hand2 == "Paper"
        return "Player 1 by playing Scissors wins"
      end
    end


  end

end

game = Game.new("Scissors", "Paper")
puts game.play