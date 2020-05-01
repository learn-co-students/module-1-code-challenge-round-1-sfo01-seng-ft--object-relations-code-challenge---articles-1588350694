class Author
  attr_accessor :name

@@all = [ ]
  def initialize(name)
    @name = name
    @@all << self
    # binding.pry
  end

  def self.all
    @@all
  end


  def articles
    articles = Article.all.select {|a| a.author == self}
    articles.map {|a| a.title}
  end

  def add_article(magazine,title)
    Article.new(self,magazine,title)
  end

  def topic_areas
    magazine = Article.all.select {|a| a.author}
     category = magazine.map {|m| m.magazine}
     category.map {|c| c.category}.uniq
  end
  
  def magazines
    articles = Article.all.select {|a| a.author == self}
    articles.map {|m| m.magazine}.uniq
  end


end

