require "java"

include_class "java.util.TreeSet"
include_class "com.example.CallMe"
include_class "com.example.ISpeaker"

puts "Hello from ruby"
set = TreeSet.new
set.add "foo"
set.add "Bar"
set.add "baz"
set.each { |v| puts "value: #{v}"}

cm = CallMe.new
cm.hello
$globalCM.hello

class CallJava
  include ISpeaker
  def initialize
    super
    @count = 0
  end
  
  def say(msg)
    puts "Ruby saying #{msg}"
  end
  
  def addOne(from)
    #m.synchronize {
    @count += 1
    puts "Now got #{count} from #{from}"
    #}
  end
end