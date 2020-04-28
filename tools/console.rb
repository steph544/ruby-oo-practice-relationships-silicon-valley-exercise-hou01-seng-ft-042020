require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1=Startup.new("startup1", "Matt", "www.monday.com")
s2=Startup.new("startup2", "Patt", "www.tuesday.com")
s3=Startup.new("startup3", "Satt", "www.monday.com")
s4=Startup.new("startup4", "Yatt", "www.thursday.com")

v1=VentureCapitalist.new("yaya", 1000000000000)
v2=VentureCapitalist.new("saya", 20000000)
v3=VentureCapitalist.new("naya", 30000)

f1=Funding_round.new(s1,v2,"serie A", 20000000.00)
f2=Funding_round.new(s2,v2,"serie B",30000000.00)
f3=Funding_round.new(s3,v3, "serie C",400000.00)
f4=Funding_round.new(s2,v1,"serie A",500.00)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line