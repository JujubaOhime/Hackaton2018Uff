class StudentQuiz < ApplicationRecord
  belongs_to :student
  belongs_to :quiz
end
