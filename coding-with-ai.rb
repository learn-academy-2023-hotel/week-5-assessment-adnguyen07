# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Add comments to each line to explain the code.


# Prompt: Create a method that iterates through an array of strings and counts matching strings. Place the string names and count totals into a hash. Be sure to account for case-insensitivity.


taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

# Create method to iterate over array of strings. Use reduce method to count elements in array. Results will go into a new hash with a starting value of 0.
totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
  # For each iteration, add 1 to result for a matching string. Use downcase to ensure case insensitivity amongst string names.
  result[vote.downcase] += 1
  # Return final result.
  result
end

# Print method.
p totals