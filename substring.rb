dictionary = [
    "below","down","go",
    "going","horn","how",
    "howdy","it","i",
    "low","own","part",
    "partner","sit"
]

puts "Here is the dictionary: "
puts
puts "#{dictionary}"
puts

print "Please provide a word / sentence: "
text = gets.chomp
puts
puts "Your input is: "
puts
puts "#{text}"
puts

def substring(input, dictionary)

    text = input.gsub(/[!?]/, "").downcase.split(" ")

    dictionary.reduce(Hash.new(0)) do |object, word|
        text.map do |char|
          object[word] += 1 if char.match?(word)
        end

        object
    end
end

puts "The output is: "
puts
puts "#{substring(text, dictionary)}"