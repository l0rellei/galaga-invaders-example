module damageable
attr_accessor :hit_points

def hit?

end

def damage
	hit_points -= DAMAGE
end

def destroyed?
	damage.hit_points <= 0
end