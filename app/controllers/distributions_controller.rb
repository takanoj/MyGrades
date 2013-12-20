class DistributionsController < ApplicationController

    http_basic_authenticate_with name: "teacher", password: "secret",
  except: [:index, :show]

  def create
    @course = Course.find(params[:course_id])
    @distribution = @course.distributions.create(params[:distribution])
    redirect_to course_path(@course)
  end

  def destroy
    @course = Course.find(params[:course_id])
    @distribution = @course.distributions.find(params[:id])
    @distribution.destroy
        redirect_to course_path(@course)
  end

end
