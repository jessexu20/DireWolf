class JobpoolController < ApplicationController
  def index
    @jobs=Job.order(:name)
  end
  def search
    @search = Job.search do
      fulltext params[:search]
    end
    @jobs=@search.results
  end
end
