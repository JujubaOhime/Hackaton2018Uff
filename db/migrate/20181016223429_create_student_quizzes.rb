class CreateStudentQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :student_quizzes do |t|
      t.references :student, foreign_key: true
      t.references :quiz, foreign_key: true

      t.timestamps
    end
  end
end
