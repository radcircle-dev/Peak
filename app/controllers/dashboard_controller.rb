class DashboardController < ApplicationController
  def index
    @last_7_day_post_count = Post.where('created_at >= ?', 1.week.ago).count
  end
end
