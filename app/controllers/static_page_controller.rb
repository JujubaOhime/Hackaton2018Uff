class StaticPageController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @user = user.new
  end
end
