class ArticlesController < ApplicationController
   #edit a single article
   def edit
      @article=Article.find(params[:article]) 
   end
   
   #retrieve all articles in the db
   def index
      @articles = Article.all
   end

   def new
   end 
   
   #insert article record in the database
   def create
      #render text: params[:article].inspect
      @article=Article.new(params[:article])
      if  @article.save
         redirect_to @article
      else
         render 'new'
      end
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
