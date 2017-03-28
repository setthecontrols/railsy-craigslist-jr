class PostingsController < ApplicationController
  def show
    @posting = Posting.find(params[:id])
  end
end
