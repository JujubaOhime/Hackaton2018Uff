class CreateStudentAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :student_achievements do |t|
      t.references :student, foreign_key: true
      t.references :achievement, foreign_key: true

      t.timestamps
    end
  end
end
