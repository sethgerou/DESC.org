class PagesController < ApplicationController
  def show
    @page = Page.find(params[:id])
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update(edit_page_params)
        redirect_to page_path(@page.id)
    else
      render :edit
    end
  end

  private
  def edit_page_params
    params.require(:page).permit(:title, :body, :sidebar)
  end

end
