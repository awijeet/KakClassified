class HomeController < ApplicationController
  def index
    if params[:category].nil? and params[:subcategory].nil?
        # @ads = Ad.page params[:page]
        @ads = Ad.all
        @page_title = "Home"+" "+"Kak classified"
    elsif !params[:category].nil? and params[:subcategory].nil?
        @ads = Ad.find_all_by_category_id(params[:category])
        @page_title = Category.find(params[:category]).name+" "+"Kak classified"
    else   params[:category].nil? and !params[:subcategory].nil?
        @ads = Ad.find_all_by_subcategory_id(params[:subcategory])
        @page_title = Subcategory.find(params[:subcategory]).name+" "+"Kak classified"
    end    
  end

  def about_us
  end

  def privacy_policy
  end

  def contact_us
  end
  
  def show
    @ad = Ad.find(params[:id])
    @page_title = @ad.name+" "+@ad.category.name+" "+@ad.subcategory.name+" "+"Kak classified"
    @recommend_counter = Recommend.find_all_by_ad_id(params[:id]).count
  end

 def recommend
  ad = Ad.find(params[:id])
  if ad.nil?
  else
   Recommend.create(:ad_id => params[:id], :recommend_value => "1")
   @counter = Recommend.find_all_by_ad_id(params[:id]).count
   respond_to do |format|
     format.js
   end
  end
 end
end
