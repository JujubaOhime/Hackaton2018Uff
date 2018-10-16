class CreateQuizQtyAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :quiz_qty_achievements do |t|
      t.integer :quiz_qty
      t.string :achievement_references

      t.timestamps
    end
  end
end
