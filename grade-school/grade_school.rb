class School


  def initialize
    @roster = Hash.new { |hash, key| hash[key] = [] }
  end

  def add(student_name, grade)
    @roster[grade].push(student_name)
  end

  def students(grade)
    @roster[grade].sort
  end

  def students_by_grade
    @roster.sort.map do |grade, students| {
      :grade => grade, :students => students.sort
      }
    end
  end


end