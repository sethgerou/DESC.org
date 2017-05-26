class LinksController < ApplicationController
def new
  @link = Link.new
end

def edit
  @link = Link.find(params[:id])
end

def update
  @link = Link.find(params[:id])
  if @link.update(edit_link_params)
    redirect_to root_path
  else
    render :edit
  end
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

def destroy
  @link = Link.find(params[:id])
  @link.destroy
  redirect_to root_path
end


private
  def new_link_params
    params.require(:links).permit(:text, :url)
  end

  def edit_link_params
    params.require(:link).permit(:text, :url)
  end
end
