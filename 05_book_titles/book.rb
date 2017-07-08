class Book
  attr_accessor :title

  def title= (name)
    conjunctions = %w(the a an and in of)
    if name.length > 1
      book_name = name.split(" ")
      book_name.each do |word|
        if conjunctions.include? word
          word
        else
          word.capitalize!
        end
      end
      if conjunctions.include? book_name.first
        book_name.first.capitalize!
      end
      @title = book_name.join(" ")
    else
      @title = (name).capitalize!
    end
  end
end
