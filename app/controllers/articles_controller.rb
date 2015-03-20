class ArticlesController < ApplicationController
   def new
   end 
   def create
      #render text: params[:article].inspect
      @article=Article.new(params[:article])
      @article.save
      redirect_to @article
   end
   def article_params
     params.require(:article).permit(:title, :text)
   end
end
