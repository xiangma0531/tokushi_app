class SourcesController < ApplicationController
  before_action :authenticate_admin!

  def index
    
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

  private
  def source_params
    params.require(:source).permit(:title, :category_id, :grade_id, :content).merge(admin_id: current_admin.id)
  end
end
