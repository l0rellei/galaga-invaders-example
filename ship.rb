# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).

class Ship

  WIDTH = 100
  HEIGHT = 200


  def initialize(x, y)
    @x = x
    @y = y
    @missile_coordinates = []
  end

  def move_left
    @x -= 5
  end

  def move_right
    @x += 5 
  end

  def fire
    @missile_coordinates << [@x, @y - HEIGHT / 2]
  end

  

  def draw
    # Ignore this
  end

  

end

class missile

  def initialize

  end

  def move_missiles
    @missile_coordinates.each do |missile|
      missile[1] -= 10
    end
  end

  def draw_missiles
    @missile_coordinates.each do |missile|

    end
  end

end


=begin
Reflecting on Principle
-----------------------
1. What does the OOD promise to give us, as programmers?
2. What does Martin's SOLID acronym stand for? (Just expand the acronym.)
3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later).
4. In Metz' TRUE acronym, what does the E stand for and what does it mean?
5. How does applying SRP naturally lead to good design?
=end


1. OOD promisses to give us tools to create software that is transparent- 
consequences of changes are obvious in the code itself and the code dependent on it;
 reasonable- the cost of changes is proportionate to the benefit 
 ; usable, and exemplry- a model of efficient, clean programming. It will help us create
 software that is flexible to change.

2. Single Responsibility Principle, Open/Closed, Liskov Substitution, 
Interface segregation, Dependency inversion

3. False
4. Exemplary

5. It isolates objects and lessens dependency.
