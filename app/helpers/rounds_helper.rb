module RoundsHelper

  def set_rounds_to(num)
    rounds = Rounds.all
    while num < rounds.count
      Round.create
    end
  end
end
