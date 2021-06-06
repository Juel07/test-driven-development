# let's put all students into an array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates",
]

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_names(names)
  names.each do |student|
    puts student
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# We are passing the students variable to the methods as an argument (called "names" in both cases).
# This is because the methods don't have access to local variables defined outside them.
