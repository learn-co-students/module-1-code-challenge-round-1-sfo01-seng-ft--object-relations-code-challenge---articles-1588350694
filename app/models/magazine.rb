class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  #Magazine#contributors
  def contributors
    contributing_authors = Article.all.select {|article| article.magazine == self}
    contributing_authors.map {|authors| authors.author}.uniq
  end 

  #Magazine.find_by_name(name)
  def self.find_by_name(names)
    self.all.find {|first_name| first_name.name = names}
  end

  #Magazine#article_titles
  def article_titles
    article_title = Article.all.select {|article| article.magazine == self}
    article_title.map {|titles| titles.title}
  end 

  #Magazine#contributing_authors
  def contributing_authors
    contributing_authors = Article.all.select {|article| article.magazine == self}
    arr = contributing_authors.map {|authors| authors.author}
    name_arr = arr.map{|names| names.name}
    hash = Hash.new{|h, k| [k, name_arr.count(k)] }
    final = hash.values_at(*name_arr.uniq)
    final.each do |element|
      if (element[1]  > 2)
        return element[0] #This will return name that has written at least 3 articles
      end 
    end 
  end 
  
  def self.all 
    @@all 
  end 
end
