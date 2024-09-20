class ContentBlocksController < ApplicationController
  def index
    @content_blocks = ContentBlock.all
  end

  def show
    @content_block = ContentBlock.find(params[:id])
  end
end
