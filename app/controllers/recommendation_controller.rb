class RecommendationController < ApplicationController
  def view
    @user=current_user
    @jobapplications=Jobapplication.find_by_user_id(@user)
    job=@jobapplications.job
    @category=job.category
    # @category=@job.category
  end
end
