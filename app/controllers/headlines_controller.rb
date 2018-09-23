class HeadlinesController < ApplicationController
    
   def search
        if params[:headline].present?
          @headline = Headline.new_from_lookup(params[:headline]).as_json
          #render json: @headline
          render 'users/my_news'
        else
          flash[:danger] = "You have entered an empty search string"
          redirect_to my_news_path
        end
   end
end