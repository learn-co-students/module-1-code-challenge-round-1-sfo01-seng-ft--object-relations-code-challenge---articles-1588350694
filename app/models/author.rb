class Author
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def name
    @name 
  end 
  
  #Author#articles
  def articles
    article_array = Article.all.select {|article| article.author == self}
    article_array.map {|titles| titles.title}
  end 

  #Author#magazines
  def magazines
    magazine_array = Article.all.select {|article| article.author == self}
    magazine_array.map {|mag_name| mag_name.magazine}
  end 

  #Author#add_article(magazine, title)
  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end 

  #Author#topic_areas
  def topic_areas
    contribute = Article.all.select{|contributions| contributions.author == self}
    magazines = contribute.map{|magazine_stuff| magazine_stuff.magazine}
    magazines.map {|categories| categories.category}.uniq
  end 

  def self.all 
    @@all 
  end 
end
