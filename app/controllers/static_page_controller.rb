class StaticPageController < ApplicationController
  skip_before_action :authenticate_student!
  def home
    @student = Student.new
  end
end
