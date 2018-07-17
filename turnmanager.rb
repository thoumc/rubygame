class Turn_manager
  def initialize (playersArr)
    @playersArr = playersArr
  end

  def current_player
    @playersArr[0]
  end

  def newturn
    @playersArr.rotate!
  end
end