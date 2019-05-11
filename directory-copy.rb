students = [
  {name: "Dr. Hannibal Lecter", cohort: :november, hobby: :running },
  {name: "Darth Vader", cohort: :november, hobby: :music },
  {name: "Nurse Ratched", cohort: :november, hobby: :running },
  {name: "Michael Corleone", cohort: :november, hobby: :music },
  {name: "Alex DeLarge", cohort: :october, hobby: :music },
  {name: "The Wicked Witch of the West", cohort: :november },
  {name: "Terminator", cohort: :november, hobby: :running },
  {name: "Freddy Krueger", cohort: :november, hobby: :singing },
  {name: "The Joker", cohort: :november, hobby: :music },
  {name: "Joffrey Baratheon", cohort: :october, hobby: :singing },
  {name: "Norman Bates", cohort: :october, hobby: :running }
]
def input_students
  puts "Please enter the names of the students, along with the cohort"
  puts "To finish, please enter stop"
  students = []
  name = gets.chomp
  cohort = gets.chomp
  while name != "stop" do
    students << {name: name.center(10), cohort: cohort }
    puts "Now we have #{students.count} students"
    name = gets.chomp
    cohort = gets.chomp
    if name.empty?
      name = "No name given"
    elsif name == "stop" || cohort == "stop"
      break
    end
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
def print_footer(students)
  if students.count == 1
    puts "Overall, we have #{students.count} great student"
  elsif students.count > 1
    puts "Overall, we have #{students.count} great students"
  end
end
students = input_students
print_header
print(students)
print_footer(students)