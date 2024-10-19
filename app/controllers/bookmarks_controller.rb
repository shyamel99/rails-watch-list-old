class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create 
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
    @bookmark.list = @list
    @bookmark.save
    redirect_to list_path(@list)
  end
end
