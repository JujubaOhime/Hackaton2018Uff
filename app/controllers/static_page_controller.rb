class StaticPageController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :logged_user

  def home
    @user = User.new
    @hide_header = true
  end

  private

  def logged_user
    if current_user
      redirect_to root_url
    end
  end
end
