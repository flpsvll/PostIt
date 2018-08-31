class PagesController < ApplicationController
  
  def update
    @page = Page.find(params[:id])
  
    if @page.update(page_params)
      redirect_to pages_path
    else
      render :edit
    end
  end

  # def edit
  #   @page = Page.find(params[:id])
  # end

  private
 
    def pages_params
      params.require(:page).permit(:title, :author, :body)
    end