class WelcomeController < ApplicationController
  def index
    render :landing
  end

  def what_we_do_show
    render :what_we_do
  end
end
