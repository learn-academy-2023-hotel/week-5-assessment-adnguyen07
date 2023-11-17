# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

# Pseudo code:

# Input: A hash containing arrays of strings
# Output: An array with the string values each at an index and in alphabetical order

# Create a method that takes in a hash as an argument.
def alphabetize(hash)
    # Use built-in methods of values, flatten and sort to return the values of the hash in an array and sorted into alphabetical order.
    p hash.values.flatten.sort
end

# Use method with given hash.
alphabetize(us_states)

# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# Pseudo code:

# Input: The initial attributes of a class
# Output: A sentence with the data from the class

# Create a class.
class Bike
    # Initialize with the model, wheels and current speed.
    def initialize(model)
    @model = model
    @wheels = 2
    @current_speed = 0
    end
    # Create a method to return a sentence with the bike info.
    def bike_info
        p "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph."
    end
    # Create a method to increase current speed by the amount in argument.
    def pedal_faster(number)
        @current_speed += number
    end
    # Create a method to decrease current speed by the amount in argument and won't allow current speed to go below zero.
    def brake(number)
        if @current_speed - number >= 0
            @current_speed -= number
        else
            @current_speed = 0
        end
    end
end

# Create a new instance of the class.
trek = Bike.new('Trek')
# Call bike info method with the new instance.
trek.bike_info

# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code:

# Input: Integer for the adjustment in bike speed
# Output: The class instance with the updated bike speed value

# Create a new instance of class.
my_bike = Bike.new('mountain')
# Use pedal faster method.
my_bike.pedal_faster(10)
p my_bike
my_bike.pedal_faster(18)
p my_bike
# Use brake method.
my_bike.brake(5)
p my_bike
my_bike.brake(25)
p my_bike