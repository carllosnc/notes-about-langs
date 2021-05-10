# Exception handling
begin
  raise NoMemoryError, "You ram out of memory"
rescue NoMemoryError => exception_variable
  puts "NoMemory Error was raised", exception_variable
rescue RunTimeError => other_exception_variable
  puts "RuntimeError was raised now"
else
  puts "this runs if no exceptions were thrown at all"
ensure
  puts "This code always runs no matter what"
end

# Exceptions
def raise_exceptions
  begin
    puts "I'm before the raise"
    raise "oops! an error has occured"
    puts "i'm after the raise"
  rescue
    puts "code rescued"
  end

  puts "after the begin block"
end
raise_exceptions

# Exception objects are normal objects.
# A rescued exception can be hold to a variable within the rescue clause.
def divideByZero
  begin
  10/0
  rescue ZeroDivisionError => e
    puts "Exception class --> #{e.class}"
    puts "Exception message --> #{e.message}"
    puts "Exceptions bactrace --> #{e.backtrace}"
  end
end
divideByZero

# Using retry statement
# Usaually in a rescue clause, the exception is captured and code resumes after begin block.
# Using retry statement, the rescue block code can be resumed from begin after capturing an exception.
def usingRetry
  x = 0

  begin
    result = 10/x
    return result
  rescue ZeroDivisionError => error
    x = 2
    retry
  end
end

puts usingRetry
