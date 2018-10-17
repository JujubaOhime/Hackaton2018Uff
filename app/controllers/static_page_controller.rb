class StaticPageController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @user = User.new
    @hide_header = true
  end
end
