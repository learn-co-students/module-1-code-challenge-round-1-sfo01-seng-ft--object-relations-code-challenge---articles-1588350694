require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


author1 = Author.new("Dude")
author2 = Author.new("Bruh")
magazine1 = Magazine.new("Dude_Magazine", "Men's Health")
magazine2 = Magazine.new("Gentleman_Magazine", "Men's Health")
article1 = Article.new(author1, magazine1, "What's up Dude")
article2 = Article.new(author1, magazine1, "How's it going Bro")
article3 = Article.new(author1, magazine1, "You good?")
article4 = Article.new(author2, magazine1, "Nah")
article5 = Article.new(author1, magazine2, "Good morning, old chap!")





### DO NOT REMOVE THIS
binding.pry

0
