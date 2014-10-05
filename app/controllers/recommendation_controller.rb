class RecommendationController < ApplicationController
  def view
    @categories=Array.new
    @recjobs=Array.new
    @user=current_user
    @jobapplications=@user.jobapplications
    @jobapplications.each do |jobapplication|
      @job=Job.find(jobapplication.job_id)
      @categories.append(@job.field)
    end
    @categories.each do |category|
      @reccjob=Job.find_by_field(category)
      if @reccjob!=@job and @reccjob.outdated==FALSE
        @recjobs.append(@reccjob)
      end
    end
      # job=@jobapplications.job
    # @category=job.category
    # @category=@job.category
  end
end
