class JobpoolController < ApplicationController
  def index
    @user=current_user
    @jobs=Job.order(:created_at)
  end
  def search
    @user=current_user
    params[:name]=params[:searchText]
    params[:content]=params[:searchText]
    params[:employer_name]=params[:searchText]
    params[:category_name]=params[:searchText]
    @jobs = Job.search_jobs(params)
  end
end
