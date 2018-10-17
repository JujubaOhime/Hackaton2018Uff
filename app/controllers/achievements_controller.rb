class AchievementsController < ApplicationController
  before_action :set_achievement, only: :show

  def index
    @achievements = Achievement.all
  end

  def show
  end

  private

  def set_achievement
    @achievement  = Achievement.find_by(id: params[:id])
  end
end
