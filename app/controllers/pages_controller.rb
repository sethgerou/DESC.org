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
      if @page.id == 14
        redirect_to root_path
      else
        redirect_to page_path(@page.id)
      end
    else
      render :edit
    end
  end

  private
  def edit_page_params
    params.require(:page).permit(:title, :body, :sidebar)
  end

end
