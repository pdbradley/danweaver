require 'rails_helper'

describe "Finding absent associations" do
  it "finds students with no associated schoolclass" do
    aclass = Schoolclass.create(name: "Fourth Period")
    s1 = Student.create(name: "Phil")
    s2 = Student.create(name: "Dan")
    aclass.students << s1

    expect(Student.includes(:class_memberships).
           where(class_memberships: {student_id: nil})).to eq [s2]
  end

  it "finds students with no teachers" do
    aclass = Schoolclass.create(name: "Fourth Period")
    bclass = Schoolclass.create(name: "Fifth Period")
    s1 = Student.create(name: "Phil")
    s2 = Student.create(name: "Dan")
    t1 = Teacher.create(name: "Mcgillicudy")

    aclass.students << s1
    aclass.teachers << t1
    bclass.students << s2

    #s2 has a class, but no teachers

    expect(Student.includes(:teachers).
           where(timeslots: {teacher_id: nil})).to eq [s2]

  end


end
