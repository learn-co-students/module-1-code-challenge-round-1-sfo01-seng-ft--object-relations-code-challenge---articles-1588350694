require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Khanittha K")
author2 = Author.new("Thorin Bustamante")
author3 = Author.new("Mike Griglak")
author4 = Author.new("Lisa Alabama")

magazine1 = Magazine.new("Hello", "Entertainment")
magazine2 = Magazine.new("KidsCode", "Children")
magazine3 = Magazine.new("Wow", "Entertainment")
magazine4 = Magazine.new("Green Beans", "Children")
magazine5 = Magazine.new("Cook Book", "Cooking")
magazine6 = Magazine.new("Sew-On", "Craft")
magazine7 = Magazine.new("Hello People", "Entertainment")

article1 = Article.new(author1, magazine1, "Hello Hollywood")
article2 = Article.new(author1, magazine2, "I Love Coding")
article3 = Article.new(author3, magazine3, "Wow LA")
article4 = Article.new(author2, magazine1, "I hate Green Beans")
article5 = Article.new(author4, magazine5, "Sweet Home Alabama")
article6 = Article.new(author4, magazine1, "Love Actually")
article7 = Article.new(author1, magazine1, "La La Land")
article8 = Article.new(author4, magazine1, "Popcorn")
article9 = Article.new(author1, magazine1, "Walk of Shame")
article10 = Article.new(author4, magazine1, "6D TV")


### DO NOT REMOVE THIS
binding.pry

0
