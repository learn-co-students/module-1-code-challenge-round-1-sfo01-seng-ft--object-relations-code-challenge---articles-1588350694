class Magazine
  attr_accessor :name, :category


  @@all = [ ]

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all 
    @@all
  end

  def contributors
    authors = Article.all.select {|a| a.magazine == self}
    authors.map {|a| a.author}
    # binding.pry
  end

  def self.find_by_name(name)
    self.all.select {|mag| mag.name = name}.first
  end

  def article_titles
    title = Article.all.select {|t| t.title}
    title.map {|t| t.title}
 #return array of title
  end

  # def contributing_authors

  #   # contributors.map {|a| a.magazines}
  #   #
  # end

end




