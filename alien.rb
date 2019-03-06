class Alien < Structure
  def initialize(args)
    super
    @sprite = args.fetch[:sprite]
  end

  def draw
    # Draws the `sprite` at `location`
  end

end
