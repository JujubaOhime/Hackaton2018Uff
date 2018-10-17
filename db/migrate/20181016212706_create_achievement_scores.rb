class CreateAchievementScores < ActiveRecord::Migration[5.2]
  def change
    create_table :achievement_scores do |t|
      t.integer :score
      t.references :achievement, foreign_key: true

      t.timestamps
    end
  end
end
