class CoursesController < ApplicationController

    http_basic_authenticate_with name: 'teacher', password: 'secret',
  except: [:index, :show]


  def new
    @course = Course.new
  end

  def show
    id = params[:id]
    @course = Course.find(id)
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:notice] = "#{@course.title} was successfully created."
      redirect_to @course
    else
      render 'new'
    end
  end

  def course_params
      params.require(:course).permit(:title, :description)
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])

    if @course.update_attributes(params[:course])
      redirect_to @course
    else
      render 'edit'
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path
  end

  def index
    @courses = Course.all
  end


end
