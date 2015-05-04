class Search1sController < ApplicationController

	def new
		@search1 = Search1.new
		@categories = Book.uniq.pluck(:category)
	end

	def create
		@search1 = Search1.create(search1_params)
		redirect_to @search1
	end

	def show
		@search1 = Search1.find(params[:id])
	end

	private
		def search1_params
			params.require(:search1).permit(:keywords, :category, :min_price, :max_price, :isbn)
		end
end
