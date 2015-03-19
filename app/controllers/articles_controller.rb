class ArticlesController < ApplicationController
   def new
   end
<<<<<<< HEAD
=======
   
   def create
      render text: params[:article].inspect
   end
>>>>>>> LayingDownGroundWork
end
