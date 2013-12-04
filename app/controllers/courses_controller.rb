class CoursesController < ApplicationController
  def new
  end

  def show
    id = params[:id]
    @course = Course.find(id)
  end

  def create
    @course = Course.new(course_params)
    @course.save
    flash[:notice] = "#{@course.title} was successfully created."
    redirect_to @course
  end

  def course_params
      params.require(:course).permit(:title, :description)
  end

  def edit
    @course = Course.find params[:id]
  end

  def update
    @course = Course.find params[:id]
    @course.update_attributes!(params[:course])
    flash[:notice] = "#{@course.title} was successfully updated."
    redirect_to course_path(@course)
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    flash[:notice] = "Course '#{@course.title}' deleted."
    redirect_to courses_path
  end

  def index
    @courses = Course.all
  end


end
