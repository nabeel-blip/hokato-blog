class ArticlesController < ApplicationController

    def show     
        @article = Article.find(params[:id])
    end

    def index
        @articles = Article.all
    end
 
    def new
        @article = Article.new
    end
    
    def create
        @article = Article.new(params.require(:article).permit(:title, :description, :author))

        if @article.save  
           flash[:notice] = "Article has been created succesfully"
            redirect_to  @article
       else
            render "new"
       end
    end

end
