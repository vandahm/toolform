class ToolsController < ApplicationController
  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
    if @tool.valid?
      redirect_to tool_path(params)
    end
  end

  def show
    @tool = Tool.new(tool_params)
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :make, :model, :owner, :area, :status,
                                 :training_requirements, :description, :link_to_manual,
                                 :link_to_image)
  end
end
