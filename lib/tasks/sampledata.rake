namespace "fake" do
  desc "fake data to produce test case for query"

  task "data" do
    Teacher.destroy_all
    Student.destroy_all
    Schoolclass.destroy_all
    one_teacher
    two_students
    one_class


  end


  def one_teacher
    Teacher.create(name: "McGillicudy")
  end
  def two_students
    Student.create(name: "Phil")
    Student.create(name: "Dan")
  end
  def one_class
    Schoolclass.create(name: "Fourth Period")
  end
end
