class StaticPageController < ApplicationController
  skip_before_action :authenticate_student!
  def home
    @student = Student.new
    @hide_header = true
  end


end
