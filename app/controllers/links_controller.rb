class LinksController < ApplicationController
def new
  @link = Link.new
end

def create
  # @summary = Summary.find(params[:id])
  @link = Link.new(new_link_params)
  @link.summary_id = params[:summary_id]
  if @link.save
    redirect_to root_path
  else
    render :new
  end
end


private
  def new_link_params
    params.require(:links).permit(:text, :url)
  end
end
