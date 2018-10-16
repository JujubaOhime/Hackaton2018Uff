class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def achievement_score_unlocked?
    candidate_achievements = AchievementScore.where("score <= ?", self.score).order(score: :desc)
    if candidate_achievements
      candidate_achievements_ids = candidate_achievements.pluck(:achievement_id)
      candidate_achievements_ids.each do |cai|
        StudentAchievement.find_or_create_by(achievement_id: cai, student_id: self.id)
      end
      return true
    else
      return false
    end
  end
end
