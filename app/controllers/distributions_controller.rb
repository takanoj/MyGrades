class DistributionsController < ApplicationController
  def new
  end

  def create
    @distribution = Distribution.create!(params[:movie])
    flash[:notice] = "#{@distribution.type} was successfully created."
    redirect_to distributions_path
  end

  def edit
    @distribution = Distribution.find params[:id]
  end

  def update
    @distribution = Distribution.find params[:id]
    @distribution.update_attributes!(params[:distribution])
    flash[:notice] = "#{@distribution.type} was successfully updated"
    redirect_to distribution_path(@distribution)
  end

  def show
    id = params[:id]
    @distribution = Distributiion.find(id)
  end

  def destroy
    @distribution = Distribution.find(params[:id])
    @distribution.destroy
    flash[:notice] = "Distribution '#{@distribution.type}' deleted"
    redirect_to distributions_path
  end


end
