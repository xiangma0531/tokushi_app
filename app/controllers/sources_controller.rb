class SourcesController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_source, only: [:show, :edit, :update]

  def index
    @sources = Source.all
  end

  def new
    @source = Source.new
  end

  def create
    @source = Source.new(source_params)
    if @source.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @source.update(source_params)
      redirect_to source_path(@source.id)
    else
      render :edit
    end
  end

  def destroy
    source = Source.find(params[:id])
    source.destroy
    redirect_to root_path
  end

  private
  def source_params
    params.require(:source).permit(:title, :category_id, :grade_id, :content).merge(admin_id: current_admin.id)
  end

  def set_source
    @source = Source.find(params[:id])
  end
end
