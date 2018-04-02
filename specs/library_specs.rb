require('minitest/autorun')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup()
    @library = Library.new([
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "15/02/18"
        }
      }, {
        title: "1984",
        rental_details: {
          student_name: "Brian",
          date: "01/03/18"
        }
      }
    ])
  end

  def test_get_books
    assert_equal([{
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "15/02/18"
      }
    }, {
      title: "1984",
      rental_details: {
        student_name: "Brian",
        date: "01/03/18"
      }
    }], @library.get_books)
  end

end
