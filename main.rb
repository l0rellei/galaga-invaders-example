#!/usr/bin/env ruby

require_relative 'alien'
require_relative 'ship'
require_relative 'missile_collection'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :alien, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new(WIDTH, HEIGHT)
    @alien = Alien.new
    @missiles = MissileCollection.new
  end

  def update
    missiles.update
  end

  def draw
    ship.draw
    alien.draw
    missiles.draw
  end

  def show
    while (true) do
      update
      draw
      key_pressed(gets.chomp) # Simulating a key interrupt.
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    elsif key == 'd'
      ship.move_right
    elsif key == ' '
      missiles.add_from(ship)
    end
    if key == 'p'
      missiles.add_from(alien)
    end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. What is "duck typing" and what does it have to do with polymorphism?
2. What are some common code smells that indicate the need for relying on a
   "duck type" rather than a concrete class?
3. True or False: Abstractions like duck typing make code explicitly easier to
   understand, vs. using concrete types.
=end


=begin
 Answers
 1. Duck typing is classifying objects by how they act (what messages they respond to,
 or what messages they expect) rather then what kind of objets they are. This allows 
 objects to send or receive the same message from many different objects
 without a care for the type of the senders or recipients(polymorphism).
 This facilitates the implementationof DRY, TRUE code.

 2. When a class depends on kind_of?, is_a?, responds_to? or switch case statements
 to send or receive messages, abstractions are not too far and duck types should 
 follow.

 3. False.  
=end




