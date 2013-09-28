require 'jumpstart_auth'

class MicroBlogger
  attr_reader :client

  def initialize
    puts "Initializing"
    @client = JumpstartAuth.twitter
  end

  def tweet(message)
    @client.update(message)
  end

  def dennis_and_sarah_are_awesome(target, message)
    puts "d #{target} Trying to send this direct message:"
    @client.direct_message_create(target, message)
  end

  def run
    command = ""
    while command != "q"
      puts ""
      printf "enter command: "
      input = gets.chomp
      parts = input.split
      command = parts[0]
      case command
         when 'q' then puts "Goodbye!"
         when 't' then tweet(parts[1..-1].join(" "))
         when 'ds' then dennis_and_sarah_are_awesome(parts[1], parts[2..-1].join(" "))
         else
           puts "Sorry, I don't know how to (#{command})"
      end
    end
  end
  blogger = MicroBlogger.new
  blogger.run
end
