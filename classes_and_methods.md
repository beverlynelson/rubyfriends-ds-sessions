class Dog
  def barks
    puts 'Woof!'
  end
end

a_dog = Dog.new
a_dog.barks
Woof!

class Dog
  def barks(custom_word)
    puts custom_word
  end
end

a_dog = Dog.new
a_dog.barks("Hello!")

class Newspaper
  def updates(type)
    if type == 'pending'
      puts "These are the pending updates"
    else
      puts "These are all the others"
    end
  end
end

newspaper = Newspaper.new
newspaper.updates('pending')

def Dog
  def sleep_record(hours, location)
    if hours < 8
      puts "Your dog slept #{hours} hours.  Please schedule an appointment at our #{location} location."
    else
      puts "Your dog slept more than 8 hours.  See you next time."
    end
  end
end

snoop_dog = Dog.new
snoop_dog.sleep_record(3, 'Beach')
