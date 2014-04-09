require 'net/http'

class NewsController < ApplicationController
	def index
		# @x = news_search
		# render json: @x
	end

	def utd_news
		@news = news_search
		render json: @news
	end

	def news_search
	  url = URI.parse('https://ajax.googleapis.com/ajax/services/search/news?v=1.0&q=manchester%20united')
	  result = Net::HTTP.get(url)
	  return result
	end
end
