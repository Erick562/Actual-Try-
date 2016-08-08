class ArticlesController  < ApplicationController

	def new 
		@article = Article.new 
	end 

	def create 
		#this renders theh params of article in plain 
		#render plain: params[:article].inspect #inspect Returns the contents of the record as a nicely formatted string
		@article = Article.new(article_params)
		@article.save 
		redirect_to articles_show(@article)#gave it the article which has all unique params and attributes 
	end

	private 
	def article_params
		params.require(:article).permit(:title, :description)
	end  
	  
end 