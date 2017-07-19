class Book
  attr_accessor :author, :page_count
  attr_reader :title, :genre

  GENRES = []

  def initialize(title)
    @title = title
  end

  # We need to explicitly define a genre= method in order to write to our CONSTANT: GENRES:
  def genre=(genre)
  	@genre = genre
  	# Now that we've assigned a genre to a book, we also want to push that genre to GENRES:
  	GENRES << genre
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end
end