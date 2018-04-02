class Library

  def initialize(books)
    @books = books
  end

  def get_books
    return @books
  end

  def search_book_title(title)
    for book in @books
      return book if book[:title] == title
    end
  end

  def return_rental_details(title)
    for book in @books
      return book[:rental_details] if book[:title] == title
    end
  end

  def add_book_to_list(title)
    @books.push({title: title, rental_details: {student_name: " ", date: " "}})
  end

  def change_rental_details(title, student_name, due_date)
    for book in @books
        book[:rental_details] = {student_name: student_name, date: due_date} if title == book[:title]
    end
  end

end
