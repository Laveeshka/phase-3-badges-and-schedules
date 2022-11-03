# Write your code here.
def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    names.map {|name| badge_maker(name)}
end

def assign_rooms(names)
    messages = []
    names.each_with_index do |name, index|
        messages << "Hello, #{name}! You'll be assigned to room #{index+1}!"
    end
    messages
end

def printer(names)
    batch_badge_creator(names).each {|result| puts result}
    assign_rooms(names).each {|result| puts result}
end