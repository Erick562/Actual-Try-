class ArticlesController  < ApplicationController

	def index
		@articles = Article.all
	end 

	def new 
		@article = Article.new 
	end 

	def edit
		@article = Article.find(params[:id])
	end

	def create 
		@article = Article.new(article_params)
		if @article.save 
		flash[:notice] = "Congrats, your article was succefully saved"
		redirect_to article_path(@article)
		else 
		flash[:error] = "The article was not able to be saved"
		render 'new' 
	end
end

def update
	@article = Article.find(params[:id])
	if @article.update(article_params)
		flash[:notice] = "Congrats, your article was successfully updated"
		redirect_to article_path(@article) 
	else 
		flash[:notice] = "Error, your article, was not updates for the following errors.."
		render 'edit'
	end 
end

	def show
        @article = Article.find(params[:id]) #the article is passed into the instance variable that find the article by finding the unique id 
	end 

	private

	def article_params
		params.require(:article).permit(:title, :description)
	end 
	
	  
end 


