require 'pry'
# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  # @roster = {}

  def roster
    @roster
  end
  # binding.pry

  def add_student(*student)
    # binding.pry
    @roster[student[1]] << student[0] if @roster.key?(student[1])
    @roster[student[1]] = [student[0]] if !@roster.key?(student[1])
    # binding.pry
    # @roster[student[1]] << student[0] if @roster.key?(student[1])
  end

  def grade(num)
    @roster[num]
  end

  def sort
    # @roster.map do | grade, students |
    #   # binding.pry
    #   students.sort
    #   binding.pry
    # end
    # binding.pry
    @roster.transform_values {|students| students.sort }
  end

end
