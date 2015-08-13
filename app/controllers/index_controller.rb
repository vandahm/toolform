class IndexController < ApplicationController
  def index
    redirect_to new_tool_path
  end
end
