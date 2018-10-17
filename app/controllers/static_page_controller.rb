class StaticPageController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :logged_user, only: [:home]

  def home
    @user = User.new
    @hide_header = true
  end

  def painel_aluno
  end

  private

  def logged_user
    if current_user
      redirect_to root_url
    end
  end
end
