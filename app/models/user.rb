class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def achievement_score_unlocked?
    candidate_achievements = AchievementScore.where("score <= ?", self.score).order(score: :desc)
    if candidate_achievements
      candidate_achievements_ids = candidate_achievements.pluck(:achievement_id)
      new_achievements = false
      candidate_achievements_ids.each do |cai|
        sa = userAchievement.find_by(achievement_id: cai, user_id: self.id)
        if !sa
          new_achievements = true
          userAchievement.create(achievement_id: cai, user_id: self.id)
        end
      end
      if new_achievements
        return true
      else
        return false
      end
    else
      return false
    end
  end

  def achievement_quiz_qty_unlocked?
    quiz_qty = userQuiz.where(user_id: self.id).count()
    candidate_achievements = QuizQtyAchievement.where("quiz_qty <= ?", quiz_qty).order(quiz_qty: :desc)
    if candidate_achievements
      candidate_achievements_ids = candidate_achievements.pluck(:achievement_id)
      new_achievements = false
      candidate_achievements_ids.each do |cai|
        sa = userAchievement.find_by(achievement_id: cai, user_id: self.id)
        if !sa
          new_achievements = true
          userAchievement.create(achievement_id: cai, user_id: self.id)
        end
      end
      if new_achievements
        return true
      else
        return false
      end
    else
      return false
    end
  end
end
