require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

mag1 = Magazine.new("GQ","clothing")
mag2 = Magazine.new("Pokemon","cartoon")
mag3 = Magazine.new("PS4","gaming")
mag4 = Magazine.new("GQ","clothing")
mag5 = Magazine.new("GQ","clothing")
mag6 = Magazine.new("GQ","clothing")


a1 = Author.new("John")
a2 = Author.new("Frances")
a3 = Author.new("Julia")
a4 = Author.new("John")



arti1 = Article.new(a1,mag1,"Clothing Mag")
arti2 = Article.new(a2,mag2,"Pokemon Cartoon")
arti3 = Article.new(a3,mag3,"Gaming Article")

### DO NOT REMOVE THIS
binding.pry
0
