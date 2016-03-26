class ShortenersController < ApplicationController
  def index
    @url = Url.new
  end

  def create
    @url = Url.new
    @generated_url = Url.find_or_create_unique params_url[:url]

    render :index
  end

  def show
    url = Url.find_by! key: params[:key]

    redirect_to url.url
  end

  private
    def params_url
      params.require(:url)
            .permit(:url)
    end
end
