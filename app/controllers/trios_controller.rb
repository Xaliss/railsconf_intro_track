class TriosController < ApplicationController


 def index
 	 
  flash.notice = ""
 	@trio = params[:Nom] 
   
      
    
  end

  def new
    @trio = params[:nom]   
  end

  def create
    @trio = params[:nom]  

     
  end
end