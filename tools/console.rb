require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Cult.new("Heaven's Gate", "Los Angeles", 1974, "Die together!")
c2 = Cult.new("Manson Family", "Hollywood", 1970, "Helterskelter")

f1 = Follower.new("Bob", 35, "I want to belong")
f2 = Follower.new("Charles", 31, "Through the bathroom window!")

bo1 = BloodOath.new(c1, f2, "Today")
bo2 = BloodOath.new(c2, f1, "Soon")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits


