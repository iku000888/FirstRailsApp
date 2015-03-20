class ArticlesController < ApplicationController
   #retrieve all articles in the db
   def show
      @articles = Article.all
   end

   def new
   end 
   
   #insert article record in the database
   def create
      #render text: params[:article].inspect
      @article=Article.new(params[:article])
      @article.save
      redirect_to @article
   end
   
   #retrieve a single record 
   def show
      @article = Article.find(params[:id])
   end
   
   private
      def article_params
        params.require(:article).permit(:title, :text)
      end
end
