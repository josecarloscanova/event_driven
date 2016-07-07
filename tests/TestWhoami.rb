class A
  class << self
    def class_name
      to_s
    end
  end
end
A.define_singleton_method(:who_am_i) do
  "I am: #{class_name}"
end
A.who_am_i   # ==> "I am: A"

puts guy = "Bob"
puts guy.define_singleton_method(:hello) { "#{self}: Hello there!" }
puts guy.hello    #=>  "Bob: Hello there!"
