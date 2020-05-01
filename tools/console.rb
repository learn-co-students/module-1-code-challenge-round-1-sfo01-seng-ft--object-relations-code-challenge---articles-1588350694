require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
au1 = Author.new("Darrick Pang")
au2 = Author.new("Homer Simpson")
m1 = Magazine.new("NFL News", "Sports")
m2 =  Magazine.new("Hockey News", "Sports")
m3 = Magazine.new("City News", "Local News")
ar1 = Article.new(au1, m1, "49ers win!")
ar2 = Article.new(au2, m2, "I like hockey")
ar3 = Article.new(au1, m2, "SJ Sharks")
ar4 = Article.new(au2, m1, "Not the Broncos!")
ar5 = Article.new(au1, m3, "City Remains Closed.")
ar6 = Article.new(au1, m1, "Super Bowl Bound!")
ar7 = Article.new(au1, m1, "Who Will Win? Vote!")







### DO NOT REMOVE THIS
binding.pry

0
