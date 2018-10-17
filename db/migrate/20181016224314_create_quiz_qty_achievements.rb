class CreateQuizQtyAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :quiz_qty_achievements do |t|
      t.integer :quiz_qty
      t.references :achievement, foreign_key: true

      t.timestamps
    end
  end
end
