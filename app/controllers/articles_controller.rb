class ArticlesController < ApplicationController
  def index
    p Rails.application.credentials
    response = HTTP.get("https://newsapi.org/v2/everything?q=#{params[:search]}&from=2022-08-15&to=2022-08-15&sortBy=popularity&apiKey=b10205e9c4c947fa99a8bcf9f973da7f&language=en")
    articles = response.parse(:json)
    render json: articles.as_json
  end
end
