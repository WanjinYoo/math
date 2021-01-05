class Players
  attr_accessor :name, :life

  def initialize(name,life)
    @name = name
    @life = 3
  end

  def loseLife()
    @life -= 1
  end
  
end