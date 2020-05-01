require 'pry'
class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def contributors
    contributors = []
    Article.all.each do |article|
      if article.magazine == self
        contributors << article.author
      end
    end
    contributors.uniq
  end

  def self.find_by_name(name)
    self.all.find {|magazine| magazine.name == name}
  end

  def article_titles
    titles = []
    Article.all.each do |article|
      if article.magazine == self
        titles << article.title
      end
    end
    titles.uniq
  end

  def contributing_authors
    # select the articles that belongs to this magazine
    # map down the above selection to a list of authors
    # OR use #article_count && select to filter out authors with less than 2 articles
    authors = []
    my_article = Article.all.select {|article| article.magazine == self}
    my_article.each do |arti|
      authors << arti.author 
    end
    authors.select {|author| author.count(self) }
    #binding.pry
  end

end
