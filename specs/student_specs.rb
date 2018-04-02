require('minitest/autorun')
require_relative('../student.rb')

class TestStudent < MiniTest::Test

  def setup()
    @student = Student.new("Brian", 5)
  end

  def test_get_student_name
    assert_equal("Brian", @student.get_student_name)
  end

  def test_get_student_cohort
    assert_equal(5, @student.get_student_cohort)
  end

  def test_set_student_name
    @student.set_student_name("John")
    assert_equal("John", @student.get_student_name)
  end

  def test_set_student_cohort
    @student.set_student_cohort(6)
    assert_equal(6, @student.get_student_cohort)
  end

  def test_get_student_to_talk
    assert_equal("I can talk", @student.get_student_to_talk("I can talk"))
  end

  def test_say_favourite_language
    assert_equal("I love Ruby", @student.say_favourite_language("Ruby"))
  end

end
