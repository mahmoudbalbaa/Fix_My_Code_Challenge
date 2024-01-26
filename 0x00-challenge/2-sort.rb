numbers = []

ARGV.each do |arg|
    # Skip if not an integer
    next unless arg =~ /^-?\d+$/

    # Convert to integer
    number = arg.to_i
    
    # Insert the number at the right position
    index = numbers.find_index { |n| n > number } || numbers.size
    numbers.insert(index, number)
end

puts numbers.join(' ')
