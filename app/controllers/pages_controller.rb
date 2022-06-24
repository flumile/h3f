# Instructor = Struct.new(:name, :level, :price, :role)

class PagesController < ApplicationController
  def home
    # dummy data
    # @instructors = [
    #   Instructor.new("woot", 20, 9999, "manager"),
    #   Instructor.new("mild", 1, 1000, "teacher"),
    #   Instructor.new("toy", 1, 1000, "assistant")
    # ]

    @instructors = Instructor.all
    # Active Record

    @score = 50
    @color_score = case @score
    when 0..40
      "fail"
    when 41..50
      "need-improve"
    when 51..70
      "fair"
    when 71..100
      "excellent"
    end
  end
end
