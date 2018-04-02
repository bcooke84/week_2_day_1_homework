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
        }],
        @library.get_books)
      end

      def test_search_book_title
        assert_equal({
          title: "lord_of_the_rings",
          rental_details: {
            student_name: "Jeff",
            date: "15/02/18"
          }
        },
        @library.search_book_title("lord_of_the_rings"))
      end

      def test_return_rental_details
        assert_equal({
          student_name: "Jeff",
          date: "15/02/18"
        },
        @library.return_rental_details("lord_of_the_rings"))
      end

      def test_add_book_to_list
        assert_equal([{
          title: "lord_of_the_rings",
          rental_details: {
            student_name: "Jeff",
            date: "15/02/18"
          }
          },{
            title: "1984",
            rental_details: {
              student_name: " ",
              date: " "
            }
            }],
            @library.add_book_to_list("1984"))
          end

          def test_change_rental_details
            assert_equal([{
              title: "lord_of_the_rings",
              rental_details: {
                student_name: "Brian",
                date: "02/04/18"
              }
            }],
            @library.change_rental_details("lord_of_the_rings", "Brian", "02/04/18"))
          end

        end
