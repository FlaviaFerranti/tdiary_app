class StaticPagesController < ApplicationController
  if logged_in?
    @travel = current_user.travels.build
    @feed_items = current_user.feed.paginate(page: params[:page])
  end

  def help
  end
end
