require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
auth1 = Author.new("didi")
auth2 = Author.new("nala")
auth3 = Author.new("karma")

mag1 = Magazine.new("mag1", "sci-fi")
mag2 = Magazine.new("mag2", "science")
mag3 = Magazine.new("mag3", "fantasy")

art1 = Article.new(auth1, mag1, "art1")
art2 = Article.new(auth2, mag2, "art2")
art3 = Article.new(auth3, mag3, "art3")
arta = Article.new(auth1, mag3, "arta")
artb = Article.new(auth2, mag1, "artb")
artc = Article.new(auth3, mag2, "artc")
artd = Article.new(auth1, mag1, "artd")
arte = Article.new(auth1, mag1, "arte")
artf = Article.new(auth1, mag1, "artf")
artg = Article.new(auth3, mag1, "artg")
arth = Article.new(auth3, mag1, "arth")
arti = Article.new(auth3, mag1, "arti")


### DO NOT REMOVE THIS
binding.pry

0
