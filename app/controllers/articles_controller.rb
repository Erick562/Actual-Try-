class ArticlesController  < ApplicationController
	before_action :set_article, only: [:edit, :update, :show, :destroy]

	def index
		@articles = Article.all
	end 

	def new 
		@article = Article.new 
	end 


	def edit
	end

	def create 
		@article = Article.new(article_params)
		if @article.save 
		flash[:success] = "Congrats, your article was succefully saved"
		redirect_to article_path(@article)
		else 
		flash[:danger] = "The article was not able to be saved"
		render 'new' 
	end
end

def update
	
	if @article.update(article_params)
		flash[:success] = "Congrats, your article was successfully updated"
		redirect_to article_path(@article) 
	else 
		flash[:danger] = "Error, your article, was not updates for the following errors.."
		render 'edit'
	end 
end

	def show
        #the article is passed into the instance variable that find the article by finding the unique id 
	end 

	def destroy 
		@article.destroy 
		flash[:danger] = "Article was successfully destroyed"
		redirect_to articles_path
	end

	private

	def set_article
		@article = Article.find(params[:id])
	end

	def article_params
		params.require(:article).permit(:title, :description)
	end 
	
	  
end 


