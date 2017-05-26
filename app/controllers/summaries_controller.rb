class SummariesController < ApplicationController
  def index
    @summaries = Summary.all
  end

  def new
    @summary = Summary.new
  end

  def edit
    @summary = Summary.find(params[:id])
  end

  def update
    @summary = Summary.find(params[:id])
    if @summary.update(edit_summary_params)
      redirect_to summaries_path
    else
      render :edit
    end
  end

  def create
    @summary = Summary.new(new_summary_params.except(:url_one, :text_one, :url_two, :text_two, :url_three, :text_three))
    if @summary.save
      @summary = Summary.last

      if params[:summaries][:url_one]
        @link = Link.new({url: params[:summaries][:url_one], text: params[:summaries][:text_one]})
        @link.summary_id = @summary.id
        @link.save
      end
      if params[:summaries][:url_two]
        @link = Link.new({url: params[:summaries][:url_two], text: params[:summaries][:text_two]})
        @link.summary_id = @summary.id
        @link.save
      end
      if params[:summaries][:url_three]
        @link = Link.new({url: params[:summaries][:url_three], text: params[:summaries][:text_three]})
        @link.summary_id = @summary.id
        @link.save
      end
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @summary = Summary.find(params[:id])
    @summary.destroy
    redirect_to summaries_path
  end

  private
  def new_summary_params
    params.require(:summaries).permit(:heading, :subheading, :body, :image_url, :url_one, :text_one, :url_two, :text_two, :url_three, :text_three)
  end

  def edit_summary_params
    params.require(:summary).permit(:heading, :subheading, :body)
  end

end
