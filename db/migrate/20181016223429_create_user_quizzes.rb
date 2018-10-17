class CreateUserQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_quizzes do |t|
      t.references :user, foreign_key: true
      t.references :quiz, foreign_key: true

      t.timestamps
    end
  end
end
