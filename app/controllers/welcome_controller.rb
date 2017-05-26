class WelcomeController < ApplicationController
  def index
    @page = Page.find(14)
    render :landing
  end

  def what_we_do_show
    render :what_we_do
  end
end
