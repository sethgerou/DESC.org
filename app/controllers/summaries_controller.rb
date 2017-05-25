class SummariesController < ApplicationController
  def new
    @summary = Summary.new
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
        @link = Link.new({url: params[:summaries][:url_one], text: params[:summaries][:text_one]})
        @link.summary_id = @summary.id
        @link.save
      end
      if params[:summaries][:url_three]
        @link = Link.new({url: params[:summaries][:url_one], text: params[:summaries][:text_one]})
        @link.summary_id = @summary.id
        @link.save
      end
      redirect_to root_path
    else
      render :new
    end
  end
  # def update
  #   @summary = Summary.find(params[:id])
  #   @summary.update
  # end

  private
  def new_summary_params
    params.require(:summaries).permit(:heading, :subheading, :body, :image_url, :url_one, :text_one, :url_two, :text_two, :url_three, :text_three)
  end

end
