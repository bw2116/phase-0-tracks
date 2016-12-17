# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative will load the contents of a file that is relative to the file containing the require_relative statement
# require needs the absolute path to the file it needs to load

require_relative 'state_data'

class VirusPredictor
  # this method assigns the arguments passed to the newly created instance to class variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # this method passes the class variables to two methods
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private
  # this method looks at the population density and population of a state and figures out the number of deaths by multipling the appropriate 
  # number to the population class veriable and rounding it down and then prints it out
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # this method take the population density of a state and figures out the speed of the spread by adding the appropriate number to speed and then prints are response and 2 new lines
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

STATE_DATA.each do |x, y|
  x = VirusPredictor.new(x, STATE_DATA[x][:population_density], STATE_DATA[x][:population])
  x.virus_effects
end

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
  One uses the implicit form of creating a hash that allows you to define a key and value and the other uses symbols as keys.  
  The value of a symbol can't be changed.

What does require_relative do? How is it different from require?
  It looks for the file to import based upon the location of the file doing the import as opposed to giving an absolute path.

What are some ways to iterate through a hash?
  An each, each_pair, each_key and each_value statement.

When refactoring virus_effects, what stood out to you about the variables, if anything?
  I was not able to solve this

What concept did you most solidify in this challenge?
  Iterating through a hash.
=end
