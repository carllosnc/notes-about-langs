# Control structures
if true
  "is statement"
elsif false
  "else if, optional"
else
  "else, also optional"
end


# Case contruct
grade = "B"

case grade
when "A"
  puts "Way to go kiddo"
when "B"
  puts "Better luck next time"
when "C"
  puts "Scraping through"
when "F"
  puts "You failed!"
else
  puts "Alternative grading system, eh?"
end

# Cases can also use ranges
grade2 = 82
case grade2
when 90..100
  puts "Hooray!"
when 80..90
  puts "Ok, job"
else
  puts "You failed!"
end

# example (like a expression)
foo = case 2
  when 1
    true
  else
    false
  end

puts foo
